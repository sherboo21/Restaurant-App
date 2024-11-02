import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/appCubit/app_cubit.dart';
import '../../../../core/helpers/appCubit/app_state.dart';
import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_list_view_separated.dart';
import '../../../../core/widgets/app_text.dart';
import '../../logic/restaurant_cubit.dart';

class Tabs extends StatelessWidget {
  const Tabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppIcons.menuIcon,
          fit: BoxFit.contain,
        ),
        AppSize.w15.pw,
        Flexible(
          child: AppListViewSeparated(
            height: AppSize.h35,
            separator: AppSize.w15.pw,
            itemCount: context.read<RestaurantCubit>().tabs.length,
            itemBuilder: (context, index) =>
                BlocSelector<AppCubit, AppState, int>(
              selector: (state) => state.tabIndex,
              builder: (context, state) {
                return InkWell(
                  onTap: () => context.read<AppCubit>().changeTabIndex(index),
                  child: SizedBox(
                    width: AppSize.w55,
                    child: Column(
                      children: [
                        AppText(
                          text: context.read<RestaurantCubit>().tabs[index],
                          textSize: 10.sp,
                          textWeight: FontWeight.w500,
                          maxLines: 1,
                          textOverflow: TextOverflow.ellipsis,
                          textColor:
                              state == index ? AppColors.mainAppColor : null,
                        ),
                        AppSize.h5.ph,
                        Divider(
                          color: state == index
                              ? AppColors.mainAppColor
                              : Colors.transparent,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    ).addAllPadding(16);
  }
}
