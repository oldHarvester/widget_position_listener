// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_position_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WidgetPositionState {
  VisibilityInfo get visibilityInfo => throw _privateConstructorUsedError;
  WidgetPositionMetrics get positionMetrics =>
      throw _privateConstructorUsedError;

  /// Create a copy of WidgetPositionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WidgetPositionStateCopyWith<WidgetPositionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetPositionStateCopyWith<$Res> {
  factory $WidgetPositionStateCopyWith(
    WidgetPositionState value,
    $Res Function(WidgetPositionState) then,
  ) = _$WidgetPositionStateCopyWithImpl<$Res, WidgetPositionState>;
  @useResult
  $Res call({
    VisibilityInfo visibilityInfo,
    WidgetPositionMetrics positionMetrics,
  });

  $WidgetPositionMetricsCopyWith<$Res> get positionMetrics;
}

/// @nodoc
class _$WidgetPositionStateCopyWithImpl<$Res, $Val extends WidgetPositionState>
    implements $WidgetPositionStateCopyWith<$Res> {
  _$WidgetPositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetPositionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? visibilityInfo = null, Object? positionMetrics = null}) {
    return _then(
      _value.copyWith(
            visibilityInfo: null == visibilityInfo
                ? _value.visibilityInfo
                : visibilityInfo // ignore: cast_nullable_to_non_nullable
                      as VisibilityInfo,
            positionMetrics: null == positionMetrics
                ? _value.positionMetrics
                : positionMetrics // ignore: cast_nullable_to_non_nullable
                      as WidgetPositionMetrics,
          )
          as $Val,
    );
  }

  /// Create a copy of WidgetPositionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetPositionMetricsCopyWith<$Res> get positionMetrics {
    return $WidgetPositionMetricsCopyWith<$Res>(_value.positionMetrics, (
      value,
    ) {
      return _then(_value.copyWith(positionMetrics: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WidgetPositionStateImplCopyWith<$Res>
    implements $WidgetPositionStateCopyWith<$Res> {
  factory _$$WidgetPositionStateImplCopyWith(
    _$WidgetPositionStateImpl value,
    $Res Function(_$WidgetPositionStateImpl) then,
  ) = __$$WidgetPositionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    VisibilityInfo visibilityInfo,
    WidgetPositionMetrics positionMetrics,
  });

  @override
  $WidgetPositionMetricsCopyWith<$Res> get positionMetrics;
}

/// @nodoc
class __$$WidgetPositionStateImplCopyWithImpl<$Res>
    extends _$WidgetPositionStateCopyWithImpl<$Res, _$WidgetPositionStateImpl>
    implements _$$WidgetPositionStateImplCopyWith<$Res> {
  __$$WidgetPositionStateImplCopyWithImpl(
    _$WidgetPositionStateImpl _value,
    $Res Function(_$WidgetPositionStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WidgetPositionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? visibilityInfo = null, Object? positionMetrics = null}) {
    return _then(
      _$WidgetPositionStateImpl(
        visibilityInfo: null == visibilityInfo
            ? _value.visibilityInfo
            : visibilityInfo // ignore: cast_nullable_to_non_nullable
                  as VisibilityInfo,
        positionMetrics: null == positionMetrics
            ? _value.positionMetrics
            : positionMetrics // ignore: cast_nullable_to_non_nullable
                  as WidgetPositionMetrics,
      ),
    );
  }
}

/// @nodoc

class _$WidgetPositionStateImpl extends _WidgetPositionState {
  const _$WidgetPositionStateImpl({
    required this.visibilityInfo,
    required this.positionMetrics,
  }) : super._();

  @override
  final VisibilityInfo visibilityInfo;
  @override
  final WidgetPositionMetrics positionMetrics;

  @override
  String toString() {
    return 'WidgetPositionState(visibilityInfo: $visibilityInfo, positionMetrics: $positionMetrics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetPositionStateImpl &&
            (identical(other.visibilityInfo, visibilityInfo) ||
                other.visibilityInfo == visibilityInfo) &&
            (identical(other.positionMetrics, positionMetrics) ||
                other.positionMetrics == positionMetrics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visibilityInfo, positionMetrics);

  /// Create a copy of WidgetPositionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetPositionStateImplCopyWith<_$WidgetPositionStateImpl> get copyWith =>
      __$$WidgetPositionStateImplCopyWithImpl<_$WidgetPositionStateImpl>(
        this,
        _$identity,
      );
}

abstract class _WidgetPositionState extends WidgetPositionState {
  const factory _WidgetPositionState({
    required final VisibilityInfo visibilityInfo,
    required final WidgetPositionMetrics positionMetrics,
  }) = _$WidgetPositionStateImpl;
  const _WidgetPositionState._() : super._();

  @override
  VisibilityInfo get visibilityInfo;
  @override
  WidgetPositionMetrics get positionMetrics;

  /// Create a copy of WidgetPositionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetPositionStateImplCopyWith<_$WidgetPositionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
