import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_list_view_separated.dart';
import '../../../../core/widgets/app_text.dart';
import '../../logic/home_cubit.dart';

class ExploreDishes extends StatelessWidget {
  const ExploreDishes({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: AppStrings.exploreDishes,
          textWeight: FontWeight.w600,
        ).addOnlyPadding(
            bVal: AppSize.w15,
            tVal: AppSize.h25,
            lVal: AppSize.w15,
            rVal: AppSize.w15),
        AppListViewSeparated(
          height: AppSize.h85,
          itemCount: context.read<HomeCubit>().dishesList.length,
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                padding: appContainerPadding,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == 0
                        ? const Color(0xFFFF0000).withOpacity(0.10)
                        : AppColors.mainAppColor.withOpacity(0.1)),
                child: Center(
                  child: Image.asset(
                    context.read<HomeCubit>().dishesList[index].img,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              AppSize.h8.ph,
              AppText(
                text: context.read<HomeCubit>().dishesList[index].title,
                textSize: 8.sp,
              )
            ],
          ),
        )
      ],
    ));
  }
}
