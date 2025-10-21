import 'dart:math' as math;

import 'package:flutter/foundation.dart';
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

  Rect get screenRect {
    final screenSize = MediaQueryData.fromView(
      PlatformDispatcher.instance.views.first,
    ).size;
    return Rect.fromLTWH(
      0,
      0,
      screenSize.width,
      screenSize.height,
    );
  }

  bool isVisible({Rect? rect}) {
    final checkRect = rect ?? screenRect;
    return checkRect.overlaps(bounds);
  }

  bool isFullyVisible({Rect? rect}) {
    return visibleBounds(rect: rect) == bounds;
  }

  Rect visibleBounds({Rect? rect}) {
    final checkRect = rect ?? screenRect;
    final visible = isVisible(rect: checkRect);
    if (!visible) {
      return Rect.zero;
    } else {
      final checkStart = checkRect.topLeft;
      final checkEnd = checkRect.bottomRight;
      final boundsStart = bounds.topLeft;
      final boundsEnd = bounds.bottomRight;
      return Rect.fromPoints(
        Offset(
          math.max(checkStart.dx, boundsStart.dx),
          math.max(checkStart.dy, boundsStart.dy),
        ),
        Offset(
          math.min(checkEnd.dx, boundsEnd.dx),
          math.min(checkEnd.dy, boundsEnd.dy),
        ),
      );
    }
  }
}
