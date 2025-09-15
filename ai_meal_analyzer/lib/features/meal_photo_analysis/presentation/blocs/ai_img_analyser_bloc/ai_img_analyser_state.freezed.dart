// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_img_analyser_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AiImgAnalyserState {

 AIImgAnalyserStatus get status; XFile? get image; MealDetailsModel? get mealDetails; String? get error;
/// Create a copy of AiImgAnalyserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiImgAnalyserStateCopyWith<AiImgAnalyserState> get copyWith => _$AiImgAnalyserStateCopyWithImpl<AiImgAnalyserState>(this as AiImgAnalyserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiImgAnalyserState&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.mealDetails, mealDetails) || other.mealDetails == mealDetails)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,image,mealDetails,error);

@override
String toString() {
  return 'AiImgAnalyserState(status: $status, image: $image, mealDetails: $mealDetails, error: $error)';
}


}

/// @nodoc
abstract mixin class $AiImgAnalyserStateCopyWith<$Res>  {
  factory $AiImgAnalyserStateCopyWith(AiImgAnalyserState value, $Res Function(AiImgAnalyserState) _then) = _$AiImgAnalyserStateCopyWithImpl;
@useResult
$Res call({
 AIImgAnalyserStatus status, XFile? image, MealDetailsModel? mealDetails, String? error
});


$MealDetailsModelCopyWith<$Res>? get mealDetails;

}
/// @nodoc
class _$AiImgAnalyserStateCopyWithImpl<$Res>
    implements $AiImgAnalyserStateCopyWith<$Res> {
  _$AiImgAnalyserStateCopyWithImpl(this._self, this._then);

  final AiImgAnalyserState _self;
  final $Res Function(AiImgAnalyserState) _then;

/// Create a copy of AiImgAnalyserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? image = freezed,Object? mealDetails = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AIImgAnalyserStatus,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,mealDetails: freezed == mealDetails ? _self.mealDetails : mealDetails // ignore: cast_nullable_to_non_nullable
as MealDetailsModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AiImgAnalyserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealDetailsModelCopyWith<$Res>? get mealDetails {
    if (_self.mealDetails == null) {
    return null;
  }

  return $MealDetailsModelCopyWith<$Res>(_self.mealDetails!, (value) {
    return _then(_self.copyWith(mealDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiImgAnalyserState].
extension AiImgAnalyserStatePatterns on AiImgAnalyserState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiImgAnalyserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiImgAnalyserState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiImgAnalyserState value)  $default,){
final _that = this;
switch (_that) {
case _AiImgAnalyserState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiImgAnalyserState value)?  $default,){
final _that = this;
switch (_that) {
case _AiImgAnalyserState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AIImgAnalyserStatus status,  XFile? image,  MealDetailsModel? mealDetails,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiImgAnalyserState() when $default != null:
return $default(_that.status,_that.image,_that.mealDetails,_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AIImgAnalyserStatus status,  XFile? image,  MealDetailsModel? mealDetails,  String? error)  $default,) {final _that = this;
switch (_that) {
case _AiImgAnalyserState():
return $default(_that.status,_that.image,_that.mealDetails,_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AIImgAnalyserStatus status,  XFile? image,  MealDetailsModel? mealDetails,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _AiImgAnalyserState() when $default != null:
return $default(_that.status,_that.image,_that.mealDetails,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _AiImgAnalyserState implements AiImgAnalyserState {
  const _AiImgAnalyserState({this.status = AIImgAnalyserStatus.initial, this.image, this.mealDetails, this.error});
  

@override@JsonKey() final  AIImgAnalyserStatus status;
@override final  XFile? image;
@override final  MealDetailsModel? mealDetails;
@override final  String? error;

/// Create a copy of AiImgAnalyserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiImgAnalyserStateCopyWith<_AiImgAnalyserState> get copyWith => __$AiImgAnalyserStateCopyWithImpl<_AiImgAnalyserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiImgAnalyserState&&(identical(other.status, status) || other.status == status)&&(identical(other.image, image) || other.image == image)&&(identical(other.mealDetails, mealDetails) || other.mealDetails == mealDetails)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,image,mealDetails,error);

@override
String toString() {
  return 'AiImgAnalyserState(status: $status, image: $image, mealDetails: $mealDetails, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AiImgAnalyserStateCopyWith<$Res> implements $AiImgAnalyserStateCopyWith<$Res> {
  factory _$AiImgAnalyserStateCopyWith(_AiImgAnalyserState value, $Res Function(_AiImgAnalyserState) _then) = __$AiImgAnalyserStateCopyWithImpl;
@override @useResult
$Res call({
 AIImgAnalyserStatus status, XFile? image, MealDetailsModel? mealDetails, String? error
});


@override $MealDetailsModelCopyWith<$Res>? get mealDetails;

}
/// @nodoc
class __$AiImgAnalyserStateCopyWithImpl<$Res>
    implements _$AiImgAnalyserStateCopyWith<$Res> {
  __$AiImgAnalyserStateCopyWithImpl(this._self, this._then);

  final _AiImgAnalyserState _self;
  final $Res Function(_AiImgAnalyserState) _then;

/// Create a copy of AiImgAnalyserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? image = freezed,Object? mealDetails = freezed,Object? error = freezed,}) {
  return _then(_AiImgAnalyserState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AIImgAnalyserStatus,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as XFile?,mealDetails: freezed == mealDetails ? _self.mealDetails : mealDetails // ignore: cast_nullable_to_non_nullable
as MealDetailsModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AiImgAnalyserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MealDetailsModelCopyWith<$Res>? get mealDetails {
    if (_self.mealDetails == null) {
    return null;
  }

  return $MealDetailsModelCopyWith<$Res>(_self.mealDetails!, (value) {
    return _then(_self.copyWith(mealDetails: value));
  });
}
}

// dart format on
