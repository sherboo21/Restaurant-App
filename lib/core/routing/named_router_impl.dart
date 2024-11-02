import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/core/helpers/appCubit/app_cubit.dart';
import 'package:task/featuers/basket/logic/basket_cubit.dart';
import 'package:task/featuers/basket/view/basket_screen.dart';
import 'package:task/featuers/restaurant/logic/restaurant_cubit.dart';
import 'package:task/featuers/restaurant/view/restaurant_screen.dart';

import '../../featuers/layout/logic/layout_cubit.dart';
import '../../featuers/layout/view/layout_screen.dart';
import '../di/dependency_injection.dart';
import 'named_router.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.layOutScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<LayoutCubit>(),
                  child: const LayoutScreen(),
                ));
      case Routes.restaurantScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => getIt<RestaurantCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt<AppCubit>(),
                    ),
                  ],
                  child: const RestaurantScreen(),
                ));
      case Routes.basketScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<BasketCubit>(),
                  child: const BasketScreen(),
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
