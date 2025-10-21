import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_position_id.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class WidgetPositionId with _$WidgetPositionId {
  const WidgetPositionId._();

  const factory WidgetPositionId({required int id}) = _WidgetPositionId;
}
