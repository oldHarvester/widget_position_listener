import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/v4.dart';

part 'widget_position_id.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class WidgetPositionId with _$WidgetPositionId {
  const WidgetPositionId._();

  const factory WidgetPositionId({required String id}) = _WidgetPositionId;

  static WidgetPositionId generate() {
    return WidgetPositionId(id: UuidV4().generate());
  }
}
