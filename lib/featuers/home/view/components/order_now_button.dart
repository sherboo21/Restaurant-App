import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_text.dart';

class OrderNowButton extends StatelessWidget {
  const OrderNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 32.w,
        ),
        margin: EdgeInsets.symmetric(
            horizontal: AppSize.w15, vertical: AppSize.h25),
        decoration: BoxDecoration(
            color: AppColors.mainAppColor,
            borderRadius: BorderRadius.circular(8.r)),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: AppText(
            text: AppStrings.freeDeliveryOnUs,
            textSize: 12.sp,
            textWeight: FontWeight.w600,
            textColor: AppColors.scaffoldColor,
          ),
          subtitle: AppText(
            text: AppStrings.aGiftForYourFirstOrder,
            textSize: 8.sp,
            textWeight: FontWeight.w500,
            textColor: AppColors.scaffoldColor,
          ),
          trailing: AppText(
            text: AppStrings.orderNow,
            textSize: 10.sp,
            textWeight: FontWeight.w600,
            textColor: AppColors.scaffoldColor,
          ),
        ),
      ),
    );
  }
}
