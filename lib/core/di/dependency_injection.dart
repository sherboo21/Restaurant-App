import 'package:get_it/get_it.dart';
import 'package:task/featuers/basket/data/apis/basket_servicess.dart';
import 'package:task/featuers/basket/data/repos/basket_repos.dart';
import 'package:task/featuers/home/data/apis/home_services.dart';
import 'package:task/featuers/home/data/repos/home_repo.dart';
import 'package:task/featuers/home/logic/home_cubit.dart';
import 'package:task/featuers/restaurant/data/apis/restaurant_services.dart';
import 'package:task/featuers/restaurant/data/repos/home-repos.dart';
import 'package:task/featuers/restaurant/logic/restaurant_cubit.dart';

import '../../featuers/basket/logic/basket_cubit.dart';
import '../../featuers/layout/logic/layout_cubit.dart';
import '../helpers/appCubit/app_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  /// FOR APP CUBIT ///
  getIt.registerFactory<AppCubit>(() => AppCubit());

  /// FOR LAYOUT CUBIT ///
  getIt.registerFactory<LayoutCubit>(() => LayoutCubit());

  /// FOR HOME  ///
  getIt.registerLazySingleton<HomeRepository>(() => HomeServices());
  getIt.registerLazySingleton<HomeCubit>(
      () => HomeCubit(getIt<HomeRepository>()));

  /// FOR RESTAURANT  ///
  getIt.registerLazySingleton<RestaurantRepository>(() => RestaurantServices());
  getIt.registerLazySingleton<RestaurantCubit>(
      () => RestaurantCubit(getIt<RestaurantRepository>()));

  /// FOR BASKET  ///
  getIt.registerLazySingleton<BasketRepository>(() => BasketServices());
  getIt.registerLazySingleton<BasketCubit>(
      () => BasketCubit(getIt<BasketRepository>()));
}
