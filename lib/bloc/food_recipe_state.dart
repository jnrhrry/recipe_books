part of 'food_recipe_bloc.dart';

abstract class FoodRecipeState extends Equatable {
  const FoodRecipeState();

  @override
  List<Object> get props => [];
}

class FoodRecipeInitial extends FoodRecipeState {}

class FoodRecipeLoaded extends FoodRecipeState {
  final List<FoodRecipeModel> foodRecipes;
  FoodRecipeLoaded({this.foodRecipes});

  @override
  List<Object> get props => [foodRecipes];
}
