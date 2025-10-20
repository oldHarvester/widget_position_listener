// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';

// final class WidgetPositionMetrics with EquatableMixin {
//   const WidgetPositionMetrics({
//     required this.size,
//     required this.bounds,
//   });

//   factory WidgetPositionMetrics.zero() {
//     return WidgetPositionMetrics(size: Size.zero, bounds: Rect.zero);
//   }

//   final Size size;
//   final Rect bounds;

//   static WidgetPositionMetrics? fromContext(BuildContext? context) {
//     if (context == null) {
//       return null;
//     }
//     final followerBox = context.findRenderObject() as RenderBox?;
//     if (followerBox == null || !followerBox.attached) return null;
//     final followerSize = followerBox.size;
//     final followerStartPoint = followerBox.localToGlobal(Offset.zero);
//     final followerBounds = Rect.fromCenter(
//       center:
//           followerStartPoint +
//           Offset(followerSize.width / 2, followerSize.height / 2),
//       width: followerSize.width,
//       height: followerSize.height,
//     );
//     return WidgetPositionMetrics(
//       size: followerSize,
//       bounds: followerBounds,
//     );
//   }

//   Rect visibleBounds(Size screenSize) {
//     final screenRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
//     return screenRect.intersect(bounds);
//   }

//   @override
//   List<Object?> get props => [size, bounds];
// }

import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'widget_position_metrics.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class WidgetPositionMetrics with _$WidgetPositionMetrics {
  const WidgetPositionMetrics._();

  const factory WidgetPositionMetrics({
    required Size size,
    required Rect bounds,
  }) = _WidgetPositionMetrics;

  factory WidgetPositionMetrics.zero() {
    return WidgetPositionMetrics(size: Size.zero, bounds: Rect.zero);
  }

  static WidgetPositionMetrics? fromContext(BuildContext? context) {
    if (context == null) {
      return null;
    }
    final followerBox = context.findRenderObject() as RenderBox?;
    if (followerBox == null || !followerBox.attached) return null;
    final followerSize = followerBox.size;
    final followerStartPoint = followerBox.localToGlobal(Offset.zero);
    final followerBounds = Rect.fromCenter(
      center:
          followerStartPoint +
          Offset(followerSize.width / 2, followerSize.height / 2),
      width: followerSize.width,
      height: followerSize.height,
    );
    return WidgetPositionMetrics(size: followerSize, bounds: followerBounds);
  }

  Rect visibleBounds(Size screenSize) {
    final screenRect = Rect.fromLTWH(0, 0, screenSize.width, screenSize.height);
    return screenRect.intersect(bounds);
  }
}
