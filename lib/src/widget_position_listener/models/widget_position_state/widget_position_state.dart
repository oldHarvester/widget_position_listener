import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../widget_position_metrics/widget_position_metrics.dart';

part 'widget_position_state.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class WidgetPositionState with _$WidgetPositionState {
  const WidgetPositionState._();

  const factory WidgetPositionState({
    required VisibilityInfo visibilityInfo,
    required WidgetPositionMetrics positionMetrics,
  }) = _WidgetPositionState;

  factory WidgetPositionState.zero(VisibilityInfo info) {
    return WidgetPositionState(
      visibilityInfo: info,
      positionMetrics: WidgetPositionMetrics.zero(),
    );
  }
}
