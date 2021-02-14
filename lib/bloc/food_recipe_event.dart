part of 'food_recipe_bloc.dart';

abstract class FoodRecipeEvent extends Equatable {
  const FoodRecipeEvent();

  @override
  List<Object> get props => [];
}

class HomePageEvent extends FoodRecipeEvent{}
class FetchFoodRecipes extends FoodRecipeEvent{
   @override
  List<Object> get props => [];
}
