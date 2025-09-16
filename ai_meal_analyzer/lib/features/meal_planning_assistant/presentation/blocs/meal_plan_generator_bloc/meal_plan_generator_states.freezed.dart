// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_plan_generator_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MealPlanGenerationStates {

 MealPlanGeneratorStatus get status; GeneratedMealPlanModel? get mealPlanWithDailyNutrition; String? get error;
/// Create a copy of MealPlanGenerationStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanGenerationStatesCopyWith<MealPlanGenerationStates> get copyWith => _$MealPlanGenerationStatesCopyWithImpl<MealPlanGenerationStates>(this as MealPlanGenerationStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanGenerationStates&&(identical(other.status, status) || other.status == status)&&(identical(other.mealPlanWithDailyNutrition, mealPlanWithDailyNutrition) || other.mealPlanWithDailyNutrition == mealPlanWithDailyNutrition)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,mealPlanWithDailyNutrition,error);

@override
String toString() {
  return 'MealPlanGenerationStates(status: $status, mealPlanWithDailyNutrition: $mealPlanWithDailyNutrition, error: $error)';
}


}

/// @nodoc
abstract mixin class $MealPlanGenerationStatesCopyWith<$Res>  {
  factory $MealPlanGenerationStatesCopyWith(MealPlanGenerationStates value, $Res Function(MealPlanGenerationStates) _then) = _$MealPlanGenerationStatesCopyWithImpl;
@useResult
$Res call({
 MealPlanGeneratorStatus status, GeneratedMealPlanModel? mealPlanWithDailyNutrition, String? error
});


$GeneratedMealPlanModelCopyWith<$Res>? get mealPlanWithDailyNutrition;

}
/// @nodoc
class _$MealPlanGenerationStatesCopyWithImpl<$Res>
    implements $MealPlanGenerationStatesCopyWith<$Res> {
  _$MealPlanGenerationStatesCopyWithImpl(this._self, this._then);

  final MealPlanGenerationStates _self;
  final $Res Function(MealPlanGenerationStates) _then;

/// Create a copy of MealPlanGenerationStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? mealPlanWithDailyNutrition = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MealPlanGeneratorStatus,mealPlanWithDailyNutrition: freezed == mealPlanWithDailyNutrition ? _self.mealPlanWithDailyNutrition : mealPlanWithDailyNutrition // ignore: cast_nullable_to_non_nullable
as GeneratedMealPlanModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MealPlanGenerationStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneratedMealPlanModelCopyWith<$Res>? get mealPlanWithDailyNutrition {
    if (_self.mealPlanWithDailyNutrition == null) {
    return null;
  }

  return $GeneratedMealPlanModelCopyWith<$Res>(_self.mealPlanWithDailyNutrition!, (value) {
    return _then(_self.copyWith(mealPlanWithDailyNutrition: value));
  });
}
}


/// Adds pattern-matching-related methods to [MealPlanGenerationStates].
extension MealPlanGenerationStatesPatterns on MealPlanGenerationStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanGeneratorStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanGeneratorStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanGeneratorStates value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanGeneratorStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanGeneratorStates value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanGeneratorStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MealPlanGeneratorStatus status,  GeneratedMealPlanModel? mealPlanWithDailyNutrition,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanGeneratorStates() when $default != null:
return $default(_that.status,_that.mealPlanWithDailyNutrition,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MealPlanGeneratorStatus status,  GeneratedMealPlanModel? mealPlanWithDailyNutrition,  String? error)  $default,) {final _that = this;
switch (_that) {
case _MealPlanGeneratorStates():
return $default(_that.status,_that.mealPlanWithDailyNutrition,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MealPlanGeneratorStatus status,  GeneratedMealPlanModel? mealPlanWithDailyNutrition,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanGeneratorStates() when $default != null:
return $default(_that.status,_that.mealPlanWithDailyNutrition,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MealPlanGeneratorStates implements MealPlanGenerationStates {
  const _MealPlanGeneratorStates({this.status = MealPlanGeneratorStatus.initial, this.mealPlanWithDailyNutrition, this.error});
  

@override@JsonKey() final  MealPlanGeneratorStatus status;
@override final  GeneratedMealPlanModel? mealPlanWithDailyNutrition;
@override final  String? error;

/// Create a copy of MealPlanGenerationStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanGeneratorStatesCopyWith<_MealPlanGeneratorStates> get copyWith => __$MealPlanGeneratorStatesCopyWithImpl<_MealPlanGeneratorStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanGeneratorStates&&(identical(other.status, status) || other.status == status)&&(identical(other.mealPlanWithDailyNutrition, mealPlanWithDailyNutrition) || other.mealPlanWithDailyNutrition == mealPlanWithDailyNutrition)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,mealPlanWithDailyNutrition,error);

@override
String toString() {
  return 'MealPlanGenerationStates(status: $status, mealPlanWithDailyNutrition: $mealPlanWithDailyNutrition, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MealPlanGeneratorStatesCopyWith<$Res> implements $MealPlanGenerationStatesCopyWith<$Res> {
  factory _$MealPlanGeneratorStatesCopyWith(_MealPlanGeneratorStates value, $Res Function(_MealPlanGeneratorStates) _then) = __$MealPlanGeneratorStatesCopyWithImpl;
@override @useResult
$Res call({
 MealPlanGeneratorStatus status, GeneratedMealPlanModel? mealPlanWithDailyNutrition, String? error
});


@override $GeneratedMealPlanModelCopyWith<$Res>? get mealPlanWithDailyNutrition;

}
/// @nodoc
class __$MealPlanGeneratorStatesCopyWithImpl<$Res>
    implements _$MealPlanGeneratorStatesCopyWith<$Res> {
  __$MealPlanGeneratorStatesCopyWithImpl(this._self, this._then);

  final _MealPlanGeneratorStates _self;
  final $Res Function(_MealPlanGeneratorStates) _then;

/// Create a copy of MealPlanGenerationStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? mealPlanWithDailyNutrition = freezed,Object? error = freezed,}) {
  return _then(_MealPlanGeneratorStates(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MealPlanGeneratorStatus,mealPlanWithDailyNutrition: freezed == mealPlanWithDailyNutrition ? _self.mealPlanWithDailyNutrition : mealPlanWithDailyNutrition // ignore: cast_nullable_to_non_nullable
as GeneratedMealPlanModel?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MealPlanGenerationStates
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneratedMealPlanModelCopyWith<$Res>? get mealPlanWithDailyNutrition {
    if (_self.mealPlanWithDailyNutrition == null) {
    return null;
  }

  return $GeneratedMealPlanModelCopyWith<$Res>(_self.mealPlanWithDailyNutrition!, (value) {
    return _then(_self.copyWith(mealPlanWithDailyNutrition: value));
  });
}
}

// dart format on
