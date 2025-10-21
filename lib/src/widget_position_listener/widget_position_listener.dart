import 'dart:async';

import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:widget_position_listener/src/widget_position_listener/models/widget_position_event/widget_position_event.dart';
import 'package:widget_position_listener/src/widget_position_listener/models/widget_position_state/widget_position_state.dart';

import 'models/widget_position_id/widget_position_id.dart';
import 'models/widget_position_metrics/widget_position_metrics.dart';
import 'widget_position_controller.dart';

class WidgetPositionListener extends StatefulWidget {
  const WidgetPositionListener({
    super.key,
    required this.child,
    required this.onChange,
  });

  final void Function(WidgetPositionState positionState) onChange;
  final Widget child;

  @override
  State<WidgetPositionListener> createState() => _WidgetPositionListenerState();
}

class _WidgetPositionListenerState extends State<WidgetPositionListener> {
  late final WidgetPositionId id;
  late final Key _visibilityKey = UniqueKey();
  final positionController = WidgetPositionController.instance;
  StreamSubscription<WidgetPositionEvent>? _positionListener;

  @override
  void initState() {
    super.initState();
    id = positionController.add(_visibilityKey);
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
        if (mounted) {
          event.when(
            checkPositions: () {
              _checkPosition();
            },
            positionUpdated: (id, state) {
              widget.onChange(state);
            },
          );
        }
      },
    );
  }

  void _stopPositionListener() {
    _positionListener?.cancel();
    _positionListener = null;
  }

  @override
  void dispose() {
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
        final isVisible = info.visibleFraction > 0;
        positionController.changeVisible(id, info);
        if (isVisible) {
          _startPositionListener();
        } else {
          _stopPositionListener();
        }
      },
      child: widget.child,
    );
  }
}
