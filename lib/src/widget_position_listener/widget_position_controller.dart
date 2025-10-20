import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_toolkit/flutter_toolkit.dart';
import 'package:meta/meta.dart';

import 'package:visibility_detector/visibility_detector.dart';
import 'package:widget_position_listener/src/widget_position_listener/extensions/visibility_info_extension.dart';

import 'models/widget_position_id/widget_position_id.dart';
import 'models/widget_position_state/widget_position_state.dart';

enum WidgetPositionUpdateEvent { refreshPosition }

@internal
final class WidgetPositionController with WidgetsBindingObserver {
  WidgetPositionController._() {
    WidgetsBinding.instance.addObserver(this);
  }

  static final instance = WidgetPositionController._();

  final Map<WidgetPositionId, WidgetPositionState> _ids = {};

  int _visible = 0;

  int get visible => _visible;

  final StreamController<WidgetPositionUpdateEvent> _eventController =
      StreamController.broadcast();

  Stream<WidgetPositionUpdateEvent> get eventStream => _eventController.stream;

  final ThrottleExecutor _refreshThrottler = ThrottleExecutor();

  void _restartRefreshThrottler({bool force = false}) {
    if (hasVisible) {
      _refreshThrottler.execute(
        duration: force ? Duration.zero : Duration(milliseconds: 400),
        onAction: () {
          _eventController.add(WidgetPositionUpdateEvent.refreshPosition);
          _restartRefreshThrottler();
        },
      );
    }
  }

  @protected
  @override
  void didChangeMetrics() {
    _restartRefreshThrottler();
    super.didChangeMetrics();
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

  void changeVisible(WidgetPositionId id, VisibilityInfo visibilityInfo) {
    final visible = visibilityInfo.isVisible;
    _ids.update(
      id,
      (value) {
        if (value.visibilityInfo.isVisible != visible) {
          if (visible) {
            _visible++;
          } else {
            _visible--;
          }
        }
        return value.copyWith(visibilityInfo: visibilityInfo);
      },
      ifAbsent: () {
        if (visible) {
          _visible++;
        }
        return WidgetPositionState.zero(visibilityInfo);
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
