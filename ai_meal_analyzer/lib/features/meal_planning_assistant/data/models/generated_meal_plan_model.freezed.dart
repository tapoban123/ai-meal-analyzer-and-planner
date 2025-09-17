// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generated_meal_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealPlanModel {

 String? get mealId; String get type; String get name; List<String> get ingredients; double get calories; Map<String, double> get macros;
/// Create a copy of MealPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealPlanModelCopyWith<MealPlanModel> get copyWith => _$MealPlanModelCopyWithImpl<MealPlanModel>(this as MealPlanModel, _$identity);

  /// Serializes this MealPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealPlanModel&&(identical(other.mealId, mealId) || other.mealId == mealId)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.calories, calories) || other.calories == calories)&&const DeepCollectionEquality().equals(other.macros, macros));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mealId,type,name,const DeepCollectionEquality().hash(ingredients),calories,const DeepCollectionEquality().hash(macros));

@override
String toString() {
  return 'MealPlanModel(mealId: $mealId, type: $type, name: $name, ingredients: $ingredients, calories: $calories, macros: $macros)';
}


}

/// @nodoc
abstract mixin class $MealPlanModelCopyWith<$Res>  {
  factory $MealPlanModelCopyWith(MealPlanModel value, $Res Function(MealPlanModel) _then) = _$MealPlanModelCopyWithImpl;
@useResult
$Res call({
 String? mealId, String type, String name, List<String> ingredients, double calories, Map<String, double> macros
});




}
/// @nodoc
class _$MealPlanModelCopyWithImpl<$Res>
    implements $MealPlanModelCopyWith<$Res> {
  _$MealPlanModelCopyWithImpl(this._self, this._then);

  final MealPlanModel _self;
  final $Res Function(MealPlanModel) _then;

/// Create a copy of MealPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mealId = freezed,Object? type = null,Object? name = null,Object? ingredients = null,Object? calories = null,Object? macros = null,}) {
  return _then(_self.copyWith(
mealId: freezed == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,macros: null == macros ? _self.macros : macros // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealPlanModel].
extension MealPlanModelPatterns on MealPlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealPlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _MealPlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _MealPlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mealId,  String type,  String name,  List<String> ingredients,  double calories,  Map<String, double> macros)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealPlanModel() when $default != null:
return $default(_that.mealId,_that.type,_that.name,_that.ingredients,_that.calories,_that.macros);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mealId,  String type,  String name,  List<String> ingredients,  double calories,  Map<String, double> macros)  $default,) {final _that = this;
switch (_that) {
case _MealPlanModel():
return $default(_that.mealId,_that.type,_that.name,_that.ingredients,_that.calories,_that.macros);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mealId,  String type,  String name,  List<String> ingredients,  double calories,  Map<String, double> macros)?  $default,) {final _that = this;
switch (_that) {
case _MealPlanModel() when $default != null:
return $default(_that.mealId,_that.type,_that.name,_that.ingredients,_that.calories,_that.macros);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class _MealPlanModel implements MealPlanModel {
  const _MealPlanModel({this.mealId, required this.type, required this.name, required final  List<String> ingredients, required this.calories, required final  Map<String, double> macros}): _ingredients = ingredients,_macros = macros;
  factory _MealPlanModel.fromJson(Map<String, dynamic> json) => _$MealPlanModelFromJson(json);

@override final  String? mealId;
@override final  String type;
@override final  String name;
 final  List<String> _ingredients;
@override List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override final  double calories;
 final  Map<String, double> _macros;
@override Map<String, double> get macros {
  if (_macros is EqualUnmodifiableMapView) return _macros;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_macros);
}


/// Create a copy of MealPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealPlanModelCopyWith<_MealPlanModel> get copyWith => __$MealPlanModelCopyWithImpl<_MealPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealPlanModel&&(identical(other.mealId, mealId) || other.mealId == mealId)&&(identical(other.type, type) || other.type == type)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.calories, calories) || other.calories == calories)&&const DeepCollectionEquality().equals(other._macros, _macros));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mealId,type,name,const DeepCollectionEquality().hash(_ingredients),calories,const DeepCollectionEquality().hash(_macros));

@override
String toString() {
  return 'MealPlanModel(mealId: $mealId, type: $type, name: $name, ingredients: $ingredients, calories: $calories, macros: $macros)';
}


}

/// @nodoc
abstract mixin class _$MealPlanModelCopyWith<$Res> implements $MealPlanModelCopyWith<$Res> {
  factory _$MealPlanModelCopyWith(_MealPlanModel value, $Res Function(_MealPlanModel) _then) = __$MealPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String? mealId, String type, String name, List<String> ingredients, double calories, Map<String, double> macros
});




}
/// @nodoc
class __$MealPlanModelCopyWithImpl<$Res>
    implements _$MealPlanModelCopyWith<$Res> {
  __$MealPlanModelCopyWithImpl(this._self, this._then);

  final _MealPlanModel _self;
  final $Res Function(_MealPlanModel) _then;

/// Create a copy of MealPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mealId = freezed,Object? type = null,Object? name = null,Object? ingredients = null,Object? calories = null,Object? macros = null,}) {
  return _then(_MealPlanModel(
mealId: freezed == mealId ? _self.mealId : mealId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,macros: null == macros ? _self._macros : macros // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}


/// @nodoc
mixin _$GeneratedMealPlanModel {

 String? get id; DateTime? get creationDate; List<MealPlanModel> get mealPlans; Map<String, double> get totalDailyNutrition;
/// Create a copy of GeneratedMealPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratedMealPlanModelCopyWith<GeneratedMealPlanModel> get copyWith => _$GeneratedMealPlanModelCopyWithImpl<GeneratedMealPlanModel>(this as GeneratedMealPlanModel, _$identity);

  /// Serializes this GeneratedMealPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratedMealPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.creationDate, creationDate) || other.creationDate == creationDate)&&const DeepCollectionEquality().equals(other.mealPlans, mealPlans)&&const DeepCollectionEquality().equals(other.totalDailyNutrition, totalDailyNutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creationDate,const DeepCollectionEquality().hash(mealPlans),const DeepCollectionEquality().hash(totalDailyNutrition));

@override
String toString() {
  return 'GeneratedMealPlanModel(id: $id, creationDate: $creationDate, mealPlans: $mealPlans, totalDailyNutrition: $totalDailyNutrition)';
}


}

/// @nodoc
abstract mixin class $GeneratedMealPlanModelCopyWith<$Res>  {
  factory $GeneratedMealPlanModelCopyWith(GeneratedMealPlanModel value, $Res Function(GeneratedMealPlanModel) _then) = _$GeneratedMealPlanModelCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? creationDate, List<MealPlanModel> mealPlans, Map<String, double> totalDailyNutrition
});




}
/// @nodoc
class _$GeneratedMealPlanModelCopyWithImpl<$Res>
    implements $GeneratedMealPlanModelCopyWith<$Res> {
  _$GeneratedMealPlanModelCopyWithImpl(this._self, this._then);

  final GeneratedMealPlanModel _self;
  final $Res Function(GeneratedMealPlanModel) _then;

/// Create a copy of GeneratedMealPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? creationDate = freezed,Object? mealPlans = null,Object? totalDailyNutrition = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,creationDate: freezed == creationDate ? _self.creationDate : creationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,mealPlans: null == mealPlans ? _self.mealPlans : mealPlans // ignore: cast_nullable_to_non_nullable
as List<MealPlanModel>,totalDailyNutrition: null == totalDailyNutrition ? _self.totalDailyNutrition : totalDailyNutrition // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneratedMealPlanModel].
extension GeneratedMealPlanModelPatterns on GeneratedMealPlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratedMealPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratedMealPlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratedMealPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneratedMealPlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratedMealPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratedMealPlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? creationDate,  List<MealPlanModel> mealPlans,  Map<String, double> totalDailyNutrition)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratedMealPlanModel() when $default != null:
return $default(_that.id,_that.creationDate,_that.mealPlans,_that.totalDailyNutrition);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? creationDate,  List<MealPlanModel> mealPlans,  Map<String, double> totalDailyNutrition)  $default,) {final _that = this;
switch (_that) {
case _GeneratedMealPlanModel():
return $default(_that.id,_that.creationDate,_that.mealPlans,_that.totalDailyNutrition);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? creationDate,  List<MealPlanModel> mealPlans,  Map<String, double> totalDailyNutrition)?  $default,) {final _that = this;
switch (_that) {
case _GeneratedMealPlanModel() when $default != null:
return $default(_that.id,_that.creationDate,_that.mealPlans,_that.totalDailyNutrition);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class _GeneratedMealPlanModel implements GeneratedMealPlanModel {
  const _GeneratedMealPlanModel({this.id, this.creationDate, required final  List<MealPlanModel> mealPlans, required final  Map<String, double> totalDailyNutrition}): _mealPlans = mealPlans,_totalDailyNutrition = totalDailyNutrition;
  factory _GeneratedMealPlanModel.fromJson(Map<String, dynamic> json) => _$GeneratedMealPlanModelFromJson(json);

@override final  String? id;
@override final  DateTime? creationDate;
 final  List<MealPlanModel> _mealPlans;
@override List<MealPlanModel> get mealPlans {
  if (_mealPlans is EqualUnmodifiableListView) return _mealPlans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mealPlans);
}

 final  Map<String, double> _totalDailyNutrition;
@override Map<String, double> get totalDailyNutrition {
  if (_totalDailyNutrition is EqualUnmodifiableMapView) return _totalDailyNutrition;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_totalDailyNutrition);
}


/// Create a copy of GeneratedMealPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratedMealPlanModelCopyWith<_GeneratedMealPlanModel> get copyWith => __$GeneratedMealPlanModelCopyWithImpl<_GeneratedMealPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneratedMealPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratedMealPlanModel&&(identical(other.id, id) || other.id == id)&&(identical(other.creationDate, creationDate) || other.creationDate == creationDate)&&const DeepCollectionEquality().equals(other._mealPlans, _mealPlans)&&const DeepCollectionEquality().equals(other._totalDailyNutrition, _totalDailyNutrition));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creationDate,const DeepCollectionEquality().hash(_mealPlans),const DeepCollectionEquality().hash(_totalDailyNutrition));

@override
String toString() {
  return 'GeneratedMealPlanModel(id: $id, creationDate: $creationDate, mealPlans: $mealPlans, totalDailyNutrition: $totalDailyNutrition)';
}


}

/// @nodoc
abstract mixin class _$GeneratedMealPlanModelCopyWith<$Res> implements $GeneratedMealPlanModelCopyWith<$Res> {
  factory _$GeneratedMealPlanModelCopyWith(_GeneratedMealPlanModel value, $Res Function(_GeneratedMealPlanModel) _then) = __$GeneratedMealPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? creationDate, List<MealPlanModel> mealPlans, Map<String, double> totalDailyNutrition
});




}
/// @nodoc
class __$GeneratedMealPlanModelCopyWithImpl<$Res>
    implements _$GeneratedMealPlanModelCopyWith<$Res> {
  __$GeneratedMealPlanModelCopyWithImpl(this._self, this._then);

  final _GeneratedMealPlanModel _self;
  final $Res Function(_GeneratedMealPlanModel) _then;

/// Create a copy of GeneratedMealPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? creationDate = freezed,Object? mealPlans = null,Object? totalDailyNutrition = null,}) {
  return _then(_GeneratedMealPlanModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,creationDate: freezed == creationDate ? _self.creationDate : creationDate // ignore: cast_nullable_to_non_nullable
as DateTime?,mealPlans: null == mealPlans ? _self._mealPlans : mealPlans // ignore: cast_nullable_to_non_nullable
as List<MealPlanModel>,totalDailyNutrition: null == totalDailyNutrition ? _self._totalDailyNutrition : totalDailyNutrition // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}

// dart format on
