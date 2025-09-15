import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_details_model.freezed.dart';

part 'meal_details_model.g.dart';


@freezed
abstract class MealDetailsModel with _$MealDetailsModel {
  @JsonSerializable()
  const factory MealDetailsModel({
    required String mealName,
    required String description,
    required double calories,
    required double protein,
    required double carbs,
    required double fat,
    required double fiber,
    required double otherNutrients,
    required List<String> ingredientsList,
  }) = _MealDetailsModel;

  factory MealDetailsModel.fromJson(Map<String, Object?> json) => _$MealDetailsModelFromJson(json);
}
