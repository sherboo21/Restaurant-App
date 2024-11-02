import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.only(
            top: AppSize.h50,
            bottom: AppSize.h25,
            left: AppSize.w15,
            right: AppSize.w15),
        color: AppColors.mainAppColor.withOpacity(0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: AppStrings.deliveringTo,
              textSize: 8.sp,
            ),
            AppSize.h2.ph,
            Row(
              children: [
                Flexible(
                  child: AppText(
                    text: AppStrings.sixthOfOctoberGiza,
                    textSize: 12.sp,
                  ),
                ),
                AppSize.w5.pw,
                SvgPicture.asset(
                  AppIcons.arrowDownIcon,
                  fit: BoxFit.contain,
                )
              ],
            ),
            AppSize.h40.ph,
            AppText(
              text: AppStrings.heyThere,
              textSize: 14.sp,
              textWeight: FontWeight.w600,
            ),
            AppSize.h5.ph,
            AppText(
              text: AppStrings.login,
              textSize: 10.sp,
              textWeight: FontWeight.w600,
            ),
            AppSize.h15.ph,
            AppButton(
              height: 28.h,
              width: 68.w,
              title: AppStrings.signUp,
            )
          ],
        ),
      ),
    );
  }
}
