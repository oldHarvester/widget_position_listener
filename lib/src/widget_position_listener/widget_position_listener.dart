import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:widget_position_listener/src/widget_position_listener/models/widget_position_event/widget_position_event.dart';
import 'package:widget_position_listener/src/widget_position_listener/models/widget_position_state/widget_position_state.dart';

import 'models/widget_position_id/widget_position_id.dart';
import 'models/widget_position_metrics/widget_position_metrics.dart';
import 'widget_position_controller.dart';

class WidgetPositionListener extends StatefulWidget {
  const WidgetPositionListener({
    super.key,
    this.id,
    required this.child,
    required this.onChange,
  });

  final WidgetPositionId? id;
  final void Function(
    WidgetPositionId id,
    WidgetPositionState positionState,
    WidgetPositionUpdatedType type,
  )
  onChange;
  final Widget child;

  @override
  State<WidgetPositionListener> createState() => _WidgetPositionListenerState();
}

class _WidgetPositionListenerState extends State<WidgetPositionListener> {
  late final WidgetPositionId id;
  final Key _visibilityKey = UniqueKey();
  final positionController = WidgetPositionController.instance;
  StreamSubscription<WidgetPositionEvent>? _positionListener;
  final SafeExecutorMap<WidgetPositionEventType> _eventExecutors =
      SafeExecutorMap();

  @override
  void initState() {
    super.initState();
    id = positionController.add(_visibilityKey, initialId: widget.id);
    _startPositionListener();
  }

  void _checkPosition() {
    final metrics = WidgetPositionMetrics.fromContext(context);
    if (metrics != null) {
      positionController.changePositionMetrics(id, metrics);
    }
  }

  void _startPositionListener() {
    _positionListener ??= positionController.eventStream.listen(
      (event) {
        final type = event.type;
        switch (event) {
          case WidgetPositionUpdatedEvent _:
            if (event.id != id) {
              return;
            }
            break;
          case WidgetCheckPositionEvent _:
            if (event.ids.notContains(id)) {
              return;
            }
            break;
        }
        _eventExecutors.execute(
          type,
          type: SafeExecutorType.zeroDelayed,
          action: () {
            if (mounted) {
              event.when(
                checkPositions: (ids) {
                  _checkPosition();
                },
                positionUpdated: (id, state, updateType) {
                  widget.onChange(id, state, updateType);
                },
              );
            }
          },
        );
      },
    );
  }

  void _stopPositionListener() {
    _positionListener?.cancel();
    _positionListener = null;
  }

  @override
  void dispose() {
    _eventExecutors.clear();
    _stopPositionListener();
    positionController.remove(id);
    VisibilityDetectorController.instance.forget(_visibilityKey);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: _visibilityKey,
      onVisibilityChanged: (info) {
        positionController.changeVisible(id, info);
      },
      child: widget.child,
    );
  }
}
