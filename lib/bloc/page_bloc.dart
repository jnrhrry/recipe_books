import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_books/model/model.dart';
import 'package:recipe_books/services/services.dart';
part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(OnSplashScreen());
  @override
  Stream<PageState> mapEventToState(PageEvent event) async* {
    if (event is GoToSplashScreen) {
      yield OnSplashScreen();
    } else if (event is GoToMainPage) {
      yield OnMainScreen();
    } else if (event is GoToLoginScreen) {
      yield OnLoginScreen();
    } else if (event is GoToRegisterScreen) {
      yield OnRegisterScreen();
    } else if (event is GoToAccountConfirmationScreen) {
      yield OnAccountConfirmationScreen();
    } else if (event is GoToRecipeDetail) {
      FoodRecipeDetailModel recipeDetailModel =
          await RecipeServices.getFoodRecipeDetails(event.id);
      yield OnRecipeDetail(
          id: event.id, foodRecipeDetailModel: recipeDetailModel);
    }
  }
}
