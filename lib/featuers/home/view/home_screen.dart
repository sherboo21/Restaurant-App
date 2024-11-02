import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/featuers/home/logic/home_cubit.dart';
import 'package:task/featuers/home/view/components/explore_dishes.dart';
import 'package:task/featuers/home/view/components/order_now_button.dart';
import 'package:task/featuers/home/view/components/popular_today.dart';
import 'package:task/featuers/home/view/components/quick_browse.dart';
import 'package:task/featuers/home/view/components/restaurants_you_know.dart';

import '../../../core/di/dependency_injection.dart';
import 'components/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return const CustomScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            slivers: [
              HomeHeader(),
              ExploreDishes(),
              QuickBrowse(),
              RestaurantsYouKnow(),
              OrderNowButton(),
              PopularToday(),
            ],
          );
        },
      ),
    );
  }
}
