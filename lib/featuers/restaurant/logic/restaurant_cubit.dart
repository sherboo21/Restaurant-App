import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:task/core/helpers/app_strings.dart';
import 'package:task/featuers/restaurant/data/repos/home-repos.dart';

part 'restaurant_state.dart';

class RestaurantCubit extends Cubit<RestaurantState> {
  final RestaurantRepository _restaurantRepository;

  RestaurantCubit(this._restaurantRepository) : super(RestaurantInitial()) {
    scrollController = ScrollController();
  }

  final List<String> tabs = [
    AppStrings.appetizers,
    AppStrings.cheeseManakish,
    AppStrings.pizza,
  ];

  late final ScrollController scrollController;

  @override
  Future<void> close() {
    scrollController.dispose();
    return super.close();
  }
}
