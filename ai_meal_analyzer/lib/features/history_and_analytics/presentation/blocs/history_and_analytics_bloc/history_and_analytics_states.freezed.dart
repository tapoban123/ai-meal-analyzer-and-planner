// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_and_analytics_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HistoryAndAnalyticsStates {

 HistoryAndAnalyticsStatus get status; List<MealDetailsModel>? get mealAnalysisData; List<GeneratedMealPlanModel>? get mealPlansData; String? get error;
/// Create a copy of HistoryAndAnalyticsStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryAndAnalyticsStatesCopyWith<HistoryAndAnalyticsStates> get copyWith => _$HistoryAndAnalyticsStatesCopyWithImpl<HistoryAndAnalyticsStates>(this as HistoryAndAnalyticsStates, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HistoryAndAnalyticsStates&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.mealAnalysisData, mealAnalysisData)&&const DeepCollectionEquality().equals(other.mealPlansData, mealPlansData)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(mealAnalysisData),const DeepCollectionEquality().hash(mealPlansData),error);

@override
String toString() {
  return 'HistoryAndAnalyticsStates(status: $status, mealAnalysisData: $mealAnalysisData, mealPlansData: $mealPlansData, error: $error)';
}


}

/// @nodoc
abstract mixin class $HistoryAndAnalyticsStatesCopyWith<$Res>  {
  factory $HistoryAndAnalyticsStatesCopyWith(HistoryAndAnalyticsStates value, $Res Function(HistoryAndAnalyticsStates) _then) = _$HistoryAndAnalyticsStatesCopyWithImpl;
@useResult
$Res call({
 HistoryAndAnalyticsStatus status, List<MealDetailsModel>? mealAnalysisData, List<GeneratedMealPlanModel>? mealPlansData, String? error
});




}
/// @nodoc
class _$HistoryAndAnalyticsStatesCopyWithImpl<$Res>
    implements $HistoryAndAnalyticsStatesCopyWith<$Res> {
  _$HistoryAndAnalyticsStatesCopyWithImpl(this._self, this._then);

  final HistoryAndAnalyticsStates _self;
  final $Res Function(HistoryAndAnalyticsStates) _then;

/// Create a copy of HistoryAndAnalyticsStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? mealAnalysisData = freezed,Object? mealPlansData = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HistoryAndAnalyticsStatus,mealAnalysisData: freezed == mealAnalysisData ? _self.mealAnalysisData : mealAnalysisData // ignore: cast_nullable_to_non_nullable
as List<MealDetailsModel>?,mealPlansData: freezed == mealPlansData ? _self.mealPlansData : mealPlansData // ignore: cast_nullable_to_non_nullable
as List<GeneratedMealPlanModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HistoryAndAnalyticsStates].
extension HistoryAndAnalyticsStatesPatterns on HistoryAndAnalyticsStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HistoryAndAnalyticsStates value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HistoryAndAnalyticsStates() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HistoryAndAnalyticsStates value)  $default,){
final _that = this;
switch (_that) {
case _HistoryAndAnalyticsStates():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HistoryAndAnalyticsStates value)?  $default,){
final _that = this;
switch (_that) {
case _HistoryAndAnalyticsStates() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HistoryAndAnalyticsStatus status,  List<MealDetailsModel>? mealAnalysisData,  List<GeneratedMealPlanModel>? mealPlansData,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HistoryAndAnalyticsStates() when $default != null:
return $default(_that.status,_that.mealAnalysisData,_that.mealPlansData,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HistoryAndAnalyticsStatus status,  List<MealDetailsModel>? mealAnalysisData,  List<GeneratedMealPlanModel>? mealPlansData,  String? error)  $default,) {final _that = this;
switch (_that) {
case _HistoryAndAnalyticsStates():
return $default(_that.status,_that.mealAnalysisData,_that.mealPlansData,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HistoryAndAnalyticsStatus status,  List<MealDetailsModel>? mealAnalysisData,  List<GeneratedMealPlanModel>? mealPlansData,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _HistoryAndAnalyticsStates() when $default != null:
return $default(_that.status,_that.mealAnalysisData,_that.mealPlansData,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _HistoryAndAnalyticsStates implements HistoryAndAnalyticsStates {
  const _HistoryAndAnalyticsStates({this.status = HistoryAndAnalyticsStatus.initial, final  List<MealDetailsModel>? mealAnalysisData, final  List<GeneratedMealPlanModel>? mealPlansData, this.error}): _mealAnalysisData = mealAnalysisData,_mealPlansData = mealPlansData;
  

@override@JsonKey() final  HistoryAndAnalyticsStatus status;
 final  List<MealDetailsModel>? _mealAnalysisData;
@override List<MealDetailsModel>? get mealAnalysisData {
  final value = _mealAnalysisData;
  if (value == null) return null;
  if (_mealAnalysisData is EqualUnmodifiableListView) return _mealAnalysisData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<GeneratedMealPlanModel>? _mealPlansData;
@override List<GeneratedMealPlanModel>? get mealPlansData {
  final value = _mealPlansData;
  if (value == null) return null;
  if (_mealPlansData is EqualUnmodifiableListView) return _mealPlansData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? error;

/// Create a copy of HistoryAndAnalyticsStates
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryAndAnalyticsStatesCopyWith<_HistoryAndAnalyticsStates> get copyWith => __$HistoryAndAnalyticsStatesCopyWithImpl<_HistoryAndAnalyticsStates>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HistoryAndAnalyticsStates&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._mealAnalysisData, _mealAnalysisData)&&const DeepCollectionEquality().equals(other._mealPlansData, _mealPlansData)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_mealAnalysisData),const DeepCollectionEquality().hash(_mealPlansData),error);

@override
String toString() {
  return 'HistoryAndAnalyticsStates(status: $status, mealAnalysisData: $mealAnalysisData, mealPlansData: $mealPlansData, error: $error)';
}


}

/// @nodoc
abstract mixin class _$HistoryAndAnalyticsStatesCopyWith<$Res> implements $HistoryAndAnalyticsStatesCopyWith<$Res> {
  factory _$HistoryAndAnalyticsStatesCopyWith(_HistoryAndAnalyticsStates value, $Res Function(_HistoryAndAnalyticsStates) _then) = __$HistoryAndAnalyticsStatesCopyWithImpl;
@override @useResult
$Res call({
 HistoryAndAnalyticsStatus status, List<MealDetailsModel>? mealAnalysisData, List<GeneratedMealPlanModel>? mealPlansData, String? error
});




}
/// @nodoc
class __$HistoryAndAnalyticsStatesCopyWithImpl<$Res>
    implements _$HistoryAndAnalyticsStatesCopyWith<$Res> {
  __$HistoryAndAnalyticsStatesCopyWithImpl(this._self, this._then);

  final _HistoryAndAnalyticsStates _self;
  final $Res Function(_HistoryAndAnalyticsStates) _then;

/// Create a copy of HistoryAndAnalyticsStates
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? mealAnalysisData = freezed,Object? mealPlansData = freezed,Object? error = freezed,}) {
  return _then(_HistoryAndAnalyticsStates(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HistoryAndAnalyticsStatus,mealAnalysisData: freezed == mealAnalysisData ? _self._mealAnalysisData : mealAnalysisData // ignore: cast_nullable_to_non_nullable
as List<MealDetailsModel>?,mealPlansData: freezed == mealPlansData ? _self._mealPlansData : mealPlansData // ignore: cast_nullable_to_non_nullable
as List<GeneratedMealPlanModel>?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
