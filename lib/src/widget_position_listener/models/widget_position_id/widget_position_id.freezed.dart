// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_position_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WidgetPositionId {
  String get id => throw _privateConstructorUsedError;

  /// Create a copy of WidgetPositionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WidgetPositionIdCopyWith<WidgetPositionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetPositionIdCopyWith<$Res> {
  factory $WidgetPositionIdCopyWith(
    WidgetPositionId value,
    $Res Function(WidgetPositionId) then,
  ) = _$WidgetPositionIdCopyWithImpl<$Res, WidgetPositionId>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$WidgetPositionIdCopyWithImpl<$Res, $Val extends WidgetPositionId>
    implements $WidgetPositionIdCopyWith<$Res> {
  _$WidgetPositionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetPositionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WidgetPositionIdImplCopyWith<$Res>
    implements $WidgetPositionIdCopyWith<$Res> {
  factory _$$WidgetPositionIdImplCopyWith(
    _$WidgetPositionIdImpl value,
    $Res Function(_$WidgetPositionIdImpl) then,
  ) = __$$WidgetPositionIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$WidgetPositionIdImplCopyWithImpl<$Res>
    extends _$WidgetPositionIdCopyWithImpl<$Res, _$WidgetPositionIdImpl>
    implements _$$WidgetPositionIdImplCopyWith<$Res> {
  __$$WidgetPositionIdImplCopyWithImpl(
    _$WidgetPositionIdImpl _value,
    $Res Function(_$WidgetPositionIdImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WidgetPositionId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$WidgetPositionIdImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$WidgetPositionIdImpl extends _WidgetPositionId {
  const _$WidgetPositionIdImpl({required this.id}) : super._();

  @override
  final String id;

  @override
  String toString() {
    return 'WidgetPositionId(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetPositionIdImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WidgetPositionId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetPositionIdImplCopyWith<_$WidgetPositionIdImpl> get copyWith =>
      __$$WidgetPositionIdImplCopyWithImpl<_$WidgetPositionIdImpl>(
        this,
        _$identity,
      );
}

abstract class _WidgetPositionId extends WidgetPositionId {
  const factory _WidgetPositionId({required final String id}) =
      _$WidgetPositionIdImpl;
  const _WidgetPositionId._() : super._();

  @override
  String get id;

  /// Create a copy of WidgetPositionId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetPositionIdImplCopyWith<_$WidgetPositionIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
