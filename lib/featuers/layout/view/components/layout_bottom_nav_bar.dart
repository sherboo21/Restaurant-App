import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/app_imgs.dart';
import 'package:task/core/helpers/app_strings.dart';

import '../../../../core/theme/app_colors.dart';
import '../../logic/layout_cubit.dart';

class LayoutBottomNavBar extends StatelessWidget {
  final LayoutCubit layoutCubit;

  const LayoutBottomNavBar({super.key, required this.layoutCubit});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: layoutCubit.state,
      onTap: (index) {
        layoutCubit.updateIndex(index);
        layoutCubit.pageController.animateToPage(layoutCubit.state,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.mainAppColor,
      selectedLabelStyle:
          TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
      items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.homeIcon,
            ),
            label: AppStrings.home),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.searchIcon,
            ),
            label: AppStrings.search),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.receiptIcon,
            ),
            label: AppStrings.orders),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppIcons.profileIcon,
            ),
            label: AppStrings.account)
      ],
    );
  }
}
