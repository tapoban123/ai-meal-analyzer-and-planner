// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealDetailsModel {

 String? get id; String get mealName; String get description; double get calories; double get protein; double get carbs; double get fat; double get fiber; double get otherNutrients; List<String> get ingredientsList;
/// Create a copy of MealDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MealDetailsModelCopyWith<MealDetailsModel> get copyWith => _$MealDetailsModelCopyWithImpl<MealDetailsModel>(this as MealDetailsModel, _$identity);

  /// Serializes this MealDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MealDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.mealName, mealName) || other.mealName == mealName)&&(identical(other.description, description) || other.description == description)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbs, carbs) || other.carbs == carbs)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.otherNutrients, otherNutrients) || other.otherNutrients == otherNutrients)&&const DeepCollectionEquality().equals(other.ingredientsList, ingredientsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mealName,description,calories,protein,carbs,fat,fiber,otherNutrients,const DeepCollectionEquality().hash(ingredientsList));

@override
String toString() {
  return 'MealDetailsModel(id: $id, mealName: $mealName, description: $description, calories: $calories, protein: $protein, carbs: $carbs, fat: $fat, fiber: $fiber, otherNutrients: $otherNutrients, ingredientsList: $ingredientsList)';
}


}

/// @nodoc
abstract mixin class $MealDetailsModelCopyWith<$Res>  {
  factory $MealDetailsModelCopyWith(MealDetailsModel value, $Res Function(MealDetailsModel) _then) = _$MealDetailsModelCopyWithImpl;
@useResult
$Res call({
 String? id, String mealName, String description, double calories, double protein, double carbs, double fat, double fiber, double otherNutrients, List<String> ingredientsList
});




}
/// @nodoc
class _$MealDetailsModelCopyWithImpl<$Res>
    implements $MealDetailsModelCopyWith<$Res> {
  _$MealDetailsModelCopyWithImpl(this._self, this._then);

  final MealDetailsModel _self;
  final $Res Function(MealDetailsModel) _then;

/// Create a copy of MealDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? mealName = null,Object? description = null,Object? calories = null,Object? protein = null,Object? carbs = null,Object? fat = null,Object? fiber = null,Object? otherNutrients = null,Object? ingredientsList = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,mealName: null == mealName ? _self.mealName : mealName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbs: null == carbs ? _self.carbs : carbs // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,fiber: null == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as double,otherNutrients: null == otherNutrients ? _self.otherNutrients : otherNutrients // ignore: cast_nullable_to_non_nullable
as double,ingredientsList: null == ingredientsList ? _self.ingredientsList : ingredientsList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MealDetailsModel].
extension MealDetailsModelPatterns on MealDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MealDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MealDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MealDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _MealDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MealDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _MealDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String mealName,  String description,  double calories,  double protein,  double carbs,  double fat,  double fiber,  double otherNutrients,  List<String> ingredientsList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MealDetailsModel() when $default != null:
return $default(_that.id,_that.mealName,_that.description,_that.calories,_that.protein,_that.carbs,_that.fat,_that.fiber,_that.otherNutrients,_that.ingredientsList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String mealName,  String description,  double calories,  double protein,  double carbs,  double fat,  double fiber,  double otherNutrients,  List<String> ingredientsList)  $default,) {final _that = this;
switch (_that) {
case _MealDetailsModel():
return $default(_that.id,_that.mealName,_that.description,_that.calories,_that.protein,_that.carbs,_that.fat,_that.fiber,_that.otherNutrients,_that.ingredientsList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String mealName,  String description,  double calories,  double protein,  double carbs,  double fat,  double fiber,  double otherNutrients,  List<String> ingredientsList)?  $default,) {final _that = this;
switch (_that) {
case _MealDetailsModel() when $default != null:
return $default(_that.id,_that.mealName,_that.description,_that.calories,_that.protein,_that.carbs,_that.fat,_that.fiber,_that.otherNutrients,_that.ingredientsList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable()
class _MealDetailsModel implements MealDetailsModel {
  const _MealDetailsModel({this.id, required this.mealName, required this.description, required this.calories, required this.protein, required this.carbs, required this.fat, required this.fiber, required this.otherNutrients, required final  List<String> ingredientsList}): _ingredientsList = ingredientsList;
  factory _MealDetailsModel.fromJson(Map<String, dynamic> json) => _$MealDetailsModelFromJson(json);

@override final  String? id;
@override final  String mealName;
@override final  String description;
@override final  double calories;
@override final  double protein;
@override final  double carbs;
@override final  double fat;
@override final  double fiber;
@override final  double otherNutrients;
 final  List<String> _ingredientsList;
@override List<String> get ingredientsList {
  if (_ingredientsList is EqualUnmodifiableListView) return _ingredientsList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredientsList);
}


/// Create a copy of MealDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MealDetailsModelCopyWith<_MealDetailsModel> get copyWith => __$MealDetailsModelCopyWithImpl<_MealDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MealDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MealDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.mealName, mealName) || other.mealName == mealName)&&(identical(other.description, description) || other.description == description)&&(identical(other.calories, calories) || other.calories == calories)&&(identical(other.protein, protein) || other.protein == protein)&&(identical(other.carbs, carbs) || other.carbs == carbs)&&(identical(other.fat, fat) || other.fat == fat)&&(identical(other.fiber, fiber) || other.fiber == fiber)&&(identical(other.otherNutrients, otherNutrients) || other.otherNutrients == otherNutrients)&&const DeepCollectionEquality().equals(other._ingredientsList, _ingredientsList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,mealName,description,calories,protein,carbs,fat,fiber,otherNutrients,const DeepCollectionEquality().hash(_ingredientsList));

@override
String toString() {
  return 'MealDetailsModel(id: $id, mealName: $mealName, description: $description, calories: $calories, protein: $protein, carbs: $carbs, fat: $fat, fiber: $fiber, otherNutrients: $otherNutrients, ingredientsList: $ingredientsList)';
}


}

/// @nodoc
abstract mixin class _$MealDetailsModelCopyWith<$Res> implements $MealDetailsModelCopyWith<$Res> {
  factory _$MealDetailsModelCopyWith(_MealDetailsModel value, $Res Function(_MealDetailsModel) _then) = __$MealDetailsModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String mealName, String description, double calories, double protein, double carbs, double fat, double fiber, double otherNutrients, List<String> ingredientsList
});




}
/// @nodoc
class __$MealDetailsModelCopyWithImpl<$Res>
    implements _$MealDetailsModelCopyWith<$Res> {
  __$MealDetailsModelCopyWithImpl(this._self, this._then);

  final _MealDetailsModel _self;
  final $Res Function(_MealDetailsModel) _then;

/// Create a copy of MealDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? mealName = null,Object? description = null,Object? calories = null,Object? protein = null,Object? carbs = null,Object? fat = null,Object? fiber = null,Object? otherNutrients = null,Object? ingredientsList = null,}) {
  return _then(_MealDetailsModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,mealName: null == mealName ? _self.mealName : mealName // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,calories: null == calories ? _self.calories : calories // ignore: cast_nullable_to_non_nullable
as double,protein: null == protein ? _self.protein : protein // ignore: cast_nullable_to_non_nullable
as double,carbs: null == carbs ? _self.carbs : carbs // ignore: cast_nullable_to_non_nullable
as double,fat: null == fat ? _self.fat : fat // ignore: cast_nullable_to_non_nullable
as double,fiber: null == fiber ? _self.fiber : fiber // ignore: cast_nullable_to_non_nullable
as double,otherNutrients: null == otherNutrients ? _self.otherNutrients : otherNutrients // ignore: cast_nullable_to_non_nullable
as double,ingredientsList: null == ingredientsList ? _self._ingredientsList : ingredientsList // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
