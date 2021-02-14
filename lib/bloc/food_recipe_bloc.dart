
import 'package:bloc/bloc.dart';
import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:recipe_books/model/model.dart';
import 'package:recipe_books/services/services.dart';

part 'food_recipe_state.dart';
part 'food_recipe_event.dart';

class FoodRecipeBloc extends Bloc<FoodRecipeEvent, FoodRecipeState> {
  FoodRecipeBloc() : super(FoodRecipeInitial());

  @override
  Stream<FoodRecipeState> mapEventToState(
    FoodRecipeEvent event,
  ) async* {
    if (event is HomePageEvent) {
      print("home");
      yield FoodRecipeInitial();
    } else if (event is FetchFoodRecipes) {
      List<FoodRecipeModel> foodRecipes =
          await RecipeServices.getFoodRecipes(30);

      yield FoodRecipeLoaded(foodRecipes: foodRecipes);
    }
  }
}
