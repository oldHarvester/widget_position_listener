// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget_position_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$WidgetPositionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<WidgetPositionId> ids) checkPositions,
    required TResult Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )
    positionUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<WidgetPositionId> ids)? checkPositions,
    TResult? Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )?
    positionUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<WidgetPositionId> ids)? checkPositions,
    TResult Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )?
    positionUpdated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetCheckPositionEvent value) checkPositions,
    required TResult Function(WidgetPositionUpdatedEvent value) positionUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WidgetCheckPositionEvent value)? checkPositions,
    TResult? Function(WidgetPositionUpdatedEvent value)? positionUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetCheckPositionEvent value)? checkPositions,
    TResult Function(WidgetPositionUpdatedEvent value)? positionUpdated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WidgetPositionEventCopyWith<$Res> {
  factory $WidgetPositionEventCopyWith(
    WidgetPositionEvent value,
    $Res Function(WidgetPositionEvent) then,
  ) = _$WidgetPositionEventCopyWithImpl<$Res, WidgetPositionEvent>;
}

/// @nodoc
class _$WidgetPositionEventCopyWithImpl<$Res, $Val extends WidgetPositionEvent>
    implements $WidgetPositionEventCopyWith<$Res> {
  _$WidgetPositionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WidgetCheckPositionEventImplCopyWith<$Res> {
  factory _$$WidgetCheckPositionEventImplCopyWith(
    _$WidgetCheckPositionEventImpl value,
    $Res Function(_$WidgetCheckPositionEventImpl) then,
  ) = __$$WidgetCheckPositionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<WidgetPositionId> ids});
}

/// @nodoc
class __$$WidgetCheckPositionEventImplCopyWithImpl<$Res>
    extends
        _$WidgetPositionEventCopyWithImpl<$Res, _$WidgetCheckPositionEventImpl>
    implements _$$WidgetCheckPositionEventImplCopyWith<$Res> {
  __$$WidgetCheckPositionEventImplCopyWithImpl(
    _$WidgetCheckPositionEventImpl _value,
    $Res Function(_$WidgetCheckPositionEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? ids = null}) {
    return _then(
      _$WidgetCheckPositionEventImpl(
        ids: null == ids
            ? _value._ids
            : ids // ignore: cast_nullable_to_non_nullable
                  as Set<WidgetPositionId>,
      ),
    );
  }
}

/// @nodoc

class _$WidgetCheckPositionEventImpl implements WidgetCheckPositionEvent {
  const _$WidgetCheckPositionEventImpl({
    required final Set<WidgetPositionId> ids,
  }) : _ids = ids;

  final Set<WidgetPositionId> _ids;
  @override
  Set<WidgetPositionId> get ids {
    if (_ids is EqualUnmodifiableSetView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_ids);
  }

  @override
  String toString() {
    return 'WidgetPositionEvent.checkPositions(ids: $ids)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetCheckPositionEventImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetCheckPositionEventImplCopyWith<_$WidgetCheckPositionEventImpl>
  get copyWith =>
      __$$WidgetCheckPositionEventImplCopyWithImpl<
        _$WidgetCheckPositionEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<WidgetPositionId> ids) checkPositions,
    required TResult Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )
    positionUpdated,
  }) {
    return checkPositions(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<WidgetPositionId> ids)? checkPositions,
    TResult? Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )?
    positionUpdated,
  }) {
    return checkPositions?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<WidgetPositionId> ids)? checkPositions,
    TResult Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )?
    positionUpdated,
    required TResult orElse(),
  }) {
    if (checkPositions != null) {
      return checkPositions(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetCheckPositionEvent value) checkPositions,
    required TResult Function(WidgetPositionUpdatedEvent value) positionUpdated,
  }) {
    return checkPositions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WidgetCheckPositionEvent value)? checkPositions,
    TResult? Function(WidgetPositionUpdatedEvent value)? positionUpdated,
  }) {
    return checkPositions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetCheckPositionEvent value)? checkPositions,
    TResult Function(WidgetPositionUpdatedEvent value)? positionUpdated,
    required TResult orElse(),
  }) {
    if (checkPositions != null) {
      return checkPositions(this);
    }
    return orElse();
  }
}

abstract class WidgetCheckPositionEvent implements WidgetPositionEvent {
  const factory WidgetCheckPositionEvent({
    required final Set<WidgetPositionId> ids,
  }) = _$WidgetCheckPositionEventImpl;

  Set<WidgetPositionId> get ids;

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetCheckPositionEventImplCopyWith<_$WidgetCheckPositionEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WidgetPositionUpdatedEventImplCopyWith<$Res> {
  factory _$$WidgetPositionUpdatedEventImplCopyWith(
    _$WidgetPositionUpdatedEventImpl value,
    $Res Function(_$WidgetPositionUpdatedEventImpl) then,
  ) = __$$WidgetPositionUpdatedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    WidgetPositionId id,
    WidgetPositionState state,
    WidgetPositionUpdatedType updateType,
  });

  $WidgetPositionIdCopyWith<$Res> get id;
  $WidgetPositionStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$WidgetPositionUpdatedEventImplCopyWithImpl<$Res>
    extends
        _$WidgetPositionEventCopyWithImpl<
          $Res,
          _$WidgetPositionUpdatedEventImpl
        >
    implements _$$WidgetPositionUpdatedEventImplCopyWith<$Res> {
  __$$WidgetPositionUpdatedEventImplCopyWithImpl(
    _$WidgetPositionUpdatedEventImpl _value,
    $Res Function(_$WidgetPositionUpdatedEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? updateType = null,
  }) {
    return _then(
      _$WidgetPositionUpdatedEventImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as WidgetPositionId,
        state: null == state
            ? _value.state
            : state // ignore: cast_nullable_to_non_nullable
                  as WidgetPositionState,
        updateType: null == updateType
            ? _value.updateType
            : updateType // ignore: cast_nullable_to_non_nullable
                  as WidgetPositionUpdatedType,
      ),
    );
  }

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetPositionIdCopyWith<$Res> get id {
    return $WidgetPositionIdCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value));
    });
  }

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WidgetPositionStateCopyWith<$Res> get state {
    return $WidgetPositionStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$WidgetPositionUpdatedEventImpl implements WidgetPositionUpdatedEvent {
  const _$WidgetPositionUpdatedEventImpl({
    required this.id,
    required this.state,
    required this.updateType,
  });

  @override
  final WidgetPositionId id;
  @override
  final WidgetPositionState state;
  @override
  final WidgetPositionUpdatedType updateType;

  @override
  String toString() {
    return 'WidgetPositionEvent.positionUpdated(id: $id, state: $state, updateType: $updateType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WidgetPositionUpdatedEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.updateType, updateType) ||
                other.updateType == updateType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, state, updateType);

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WidgetPositionUpdatedEventImplCopyWith<_$WidgetPositionUpdatedEventImpl>
  get copyWith =>
      __$$WidgetPositionUpdatedEventImplCopyWithImpl<
        _$WidgetPositionUpdatedEventImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<WidgetPositionId> ids) checkPositions,
    required TResult Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )
    positionUpdated,
  }) {
    return positionUpdated(id, state, updateType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<WidgetPositionId> ids)? checkPositions,
    TResult? Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )?
    positionUpdated,
  }) {
    return positionUpdated?.call(id, state, updateType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<WidgetPositionId> ids)? checkPositions,
    TResult Function(
      WidgetPositionId id,
      WidgetPositionState state,
      WidgetPositionUpdatedType updateType,
    )?
    positionUpdated,
    required TResult orElse(),
  }) {
    if (positionUpdated != null) {
      return positionUpdated(id, state, updateType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WidgetCheckPositionEvent value) checkPositions,
    required TResult Function(WidgetPositionUpdatedEvent value) positionUpdated,
  }) {
    return positionUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WidgetCheckPositionEvent value)? checkPositions,
    TResult? Function(WidgetPositionUpdatedEvent value)? positionUpdated,
  }) {
    return positionUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WidgetCheckPositionEvent value)? checkPositions,
    TResult Function(WidgetPositionUpdatedEvent value)? positionUpdated,
    required TResult orElse(),
  }) {
    if (positionUpdated != null) {
      return positionUpdated(this);
    }
    return orElse();
  }
}

abstract class WidgetPositionUpdatedEvent implements WidgetPositionEvent {
  const factory WidgetPositionUpdatedEvent({
    required final WidgetPositionId id,
    required final WidgetPositionState state,
    required final WidgetPositionUpdatedType updateType,
  }) = _$WidgetPositionUpdatedEventImpl;

  WidgetPositionId get id;
  WidgetPositionState get state;
  WidgetPositionUpdatedType get updateType;

  /// Create a copy of WidgetPositionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WidgetPositionUpdatedEventImplCopyWith<_$WidgetPositionUpdatedEventImpl>
  get copyWith => throw _privateConstructorUsedError;
}
