// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_position_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WidgetPositionMetrics {
  Size get size => throw _privateConstructorUsedError;
  Rect get bounds => throw _privateConstructorUsedError;

  /// Create a copy of WidgetPositionMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WidgetPositionMetricsCopyWith<WidgetPositionMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetPositionMetricsCopyWith<$Res> {
  factory $WidgetPositionMetricsCopyWith(
    WidgetPositionMetrics value,
    $Res Function(WidgetPositionMetrics) then,
  ) = _$WidgetPositionMetricsCopyWithImpl<$Res, WidgetPositionMetrics>;
  @useResult
  $Res call({Size size, Rect bounds});
}

/// @nodoc
class _$WidgetPositionMetricsCopyWithImpl<
  $Res,
  $Val extends WidgetPositionMetrics
>
    implements $WidgetPositionMetricsCopyWith<$Res> {
  _$WidgetPositionMetricsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetPositionMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? size = null, Object? bounds = null}) {
    return _then(
      _value.copyWith(
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as Size,
            bounds: null == bounds
                ? _value.bounds
                : bounds // ignore: cast_nullable_to_non_nullable
                      as Rect,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WidgetPositionMetricsImplCopyWith<$Res>
    implements $WidgetPositionMetricsCopyWith<$Res> {
  factory _$$WidgetPositionMetricsImplCopyWith(
    _$WidgetPositionMetricsImpl value,
    $Res Function(_$WidgetPositionMetricsImpl) then,
  ) = __$$WidgetPositionMetricsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Size size, Rect bounds});
}

/// @nodoc
class __$$WidgetPositionMetricsImplCopyWithImpl<$Res>
    extends
        _$WidgetPositionMetricsCopyWithImpl<$Res, _$WidgetPositionMetricsImpl>
    implements _$$WidgetPositionMetricsImplCopyWith<$Res> {
  __$$WidgetPositionMetricsImplCopyWithImpl(
    _$WidgetPositionMetricsImpl _value,
    $Res Function(_$WidgetPositionMetricsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WidgetPositionMetrics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? size = null, Object? bounds = null}) {
    return _then(
      _$WidgetPositionMetricsImpl(
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as Size,
        bounds: null == bounds
            ? _value.bounds
            : bounds // ignore: cast_nullable_to_non_nullable
                  as Rect,
      ),
    );
  }
}

/// @nodoc

class _$WidgetPositionMetricsImpl extends _WidgetPositionMetrics {
  const _$WidgetPositionMetricsImpl({required this.size, required this.bounds})
    : super._();

  @override
  final Size size;
  @override
  final Rect bounds;

  @override
  String toString() {
    return 'WidgetPositionMetrics(size: $size, bounds: $bounds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetPositionMetricsImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.bounds, bounds) || other.bounds == bounds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, size, bounds);

  /// Create a copy of WidgetPositionMetrics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetPositionMetricsImplCopyWith<_$WidgetPositionMetricsImpl>
  get copyWith =>
      __$$WidgetPositionMetricsImplCopyWithImpl<_$WidgetPositionMetricsImpl>(
        this,
        _$identity,
      );
}

abstract class _WidgetPositionMetrics extends WidgetPositionMetrics {
  const factory _WidgetPositionMetrics({
    required final Size size,
    required final Rect bounds,
  }) = _$WidgetPositionMetricsImpl;
  const _WidgetPositionMetrics._() : super._();

  @override
  Size get size;
  @override
  Rect get bounds;

  /// Create a copy of WidgetPositionMetrics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetPositionMetricsImplCopyWith<_$WidgetPositionMetricsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
