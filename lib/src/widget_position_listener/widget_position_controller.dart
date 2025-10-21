import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';
import 'package:meta/meta.dart';

import 'package:visibility_detector/visibility_detector.dart';
import 'package:widget_position_listener/src/widget_position_listener/extensions/visibility_info_extension.dart';
import 'package:widget_position_listener/src/widget_position_listener/models/widget_position_event/widget_position_event.dart';
import 'package:widget_position_listener/src/widget_position_listener/models/widget_position_metrics/widget_position_metrics.dart';

import 'models/widget_position_id/widget_position_id.dart';
import 'models/widget_position_state/widget_position_state.dart';

@internal
final class WidgetPositionController {
  WidgetPositionController._() {
    _observer = WidgetPositionObserver(
      onWindowChanged: _onWindowChanged,
    );
  }

  static final instance = WidgetPositionController._();

  // ignore: unused_field
  late final WidgetPositionObserver _observer;

  final Map<WidgetPositionId, WidgetPositionState> _ids = {};

  int _visible = 0;

  int get visible => _visible;

  final StreamController<WidgetPositionEvent> _eventController =
      StreamController.broadcast();

  Stream<WidgetPositionEvent> get eventStream => _eventController.stream;

  final ThrottleExecutor _refreshThrottler = ThrottleExecutor();

  void _restartRefreshThrottler({bool force = false}) {
    if (hasVisible) {
      _refreshThrottler.execute(
        duration: force ? Duration.zero : Duration(milliseconds: 400),
        onAction: () {
          _eventController.add(WidgetPositionEvent.checkPositions());
          _restartRefreshThrottler();
        },
      );
    }
  }

  void _onWindowChanged() {
    _restartRefreshThrottler();
  }

  WidgetPositionId add(Key visibilityKey) {
    final id = WidgetPositionId.generate();
    _ids[id] = WidgetPositionState.zero(VisibilityInfo(key: visibilityKey));
    _visible++;
    _checkTimerContinue();
    return id;
  }

  bool remove(WidgetPositionId id) {
    final wasVisible = _ids[id]?.visibilityInfo.isVisible;
    if (wasVisible != null && wasVisible) {
      _visible--;
    }
    _checkTimerContinue();
    return _ids.remove(id) != null;
  }

  void changePositionMetrics(
    WidgetPositionId id,
    WidgetPositionMetrics metrics,
  ) {
    _ids.update(
      id,
      (value) {
        final newState = value.copyWith(
          positionMetrics: metrics,
        );
        if (value.positionMetrics != metrics) {
          _eventController.add(
            WidgetPositionEvent.positionUpdated(
              id: id,
              state: newState,
            ),
          );
        }
        return newState;
      },
    );
  }

  void changeVisible(WidgetPositionId id, VisibilityInfo visibilityInfo) {
    final visible = visibilityInfo.isVisible;
    _ids.update(
      id,
      (value) {
        final newState = value.copyWith(
          visibilityInfo: visibilityInfo,
        );
        if (value.visibilityInfo != newState.visibilityInfo) {
          _eventController.add(
            WidgetPositionEvent.positionUpdated(
              id: id,
              state: newState,
            ),
          );
        }
        if (value.visibilityInfo.isVisible != visible) {
          if (visible) {
            _visible++;
          } else {
            _visible--;
          }
        }
        return newState;
      },
    );

    _checkTimerContinue();
  }

  bool get hasVisible {
    return _visible > 0;
  }

  void _checkTimerContinue() {
    if (!hasVisible) {
      _refreshThrottler.stop();
    } else {
      if (!_refreshThrottler.isActive) {
        _restartRefreshThrottler();
      }
    }
  }
}

class WidgetPositionObserver with WidgetsBindingObserver {
  WidgetPositionObserver({
    required this.onWindowChanged,
  }) {
    WidgetsBinding.instance.addObserver(this);
  }

  final VoidCallback onWindowChanged;

  @override
  void didChangeMetrics() {
    onWindowChanged();
    super.didChangeMetrics();
  }
}
