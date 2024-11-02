import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/app_scaffold.dart';
import '../logic/layout_cubit.dart';
import 'components/layout_bottom_nav_bar.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, int>(
      builder: (context, state) {
        return AppScaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: context.read<LayoutCubit>().pageController,
            onPageChanged: (index) =>
                context.read<LayoutCubit>().updateIndex(index),
            children: context.read<LayoutCubit>().screens,
          ),
          bottomNavBar:
              LayoutBottomNavBar(layoutCubit: context.read<LayoutCubit>()),
        );
      },
    );
  }
}
