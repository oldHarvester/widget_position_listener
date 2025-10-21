// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';

import '../widget_position_id/widget_position_id.dart';
import '../widget_position_state/widget_position_state.dart';

part 'widget_position_event.freezed.dart';

enum WidgetPositionUpdatedType {
  position,
  visibility,
}

enum WidgetPositionEventType {
  checkPositions,
  positionUpdated,
}

@Freezed(fromJson: false, toJson: false)
sealed class WidgetPositionEvent with _$WidgetPositionEvent {
  const WidgetPositionEvent._();

  const factory WidgetPositionEvent.checkPositions({
    required Set<WidgetPositionId> ids,
  }) = WidgetCheckPositionEvent;

  const factory WidgetPositionEvent.positionUpdated({
    required WidgetPositionId id,
    required WidgetPositionState state,
    required WidgetPositionUpdatedType updateType,
  }) = WidgetPositionUpdatedEvent;

  WidgetPositionEventType get type {
    return when(
      checkPositions: (ids) {
        return WidgetPositionEventType.checkPositions;
      },
      positionUpdated: (id, state, updateType) {
        return WidgetPositionEventType.positionUpdated;
      },
    );
  }
}
