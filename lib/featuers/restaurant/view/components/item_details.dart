import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/helpers/extentions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: appContainerPadding,
          height: 340.h,
          width: 390.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
              image: DecorationImage(
                  image: AssetImage(AppImages.pizzaImage), fit: BoxFit.fill)),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: InkWell(
              onTap: () => context.pop(),
              child: SvgPicture.asset(
                AppIcons.closeIcon,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: AppStrings.pizzaKing,
              textWeight: FontWeight.w500,
              textSize: 12.sp,
            ),
            AppSize.h5.ph,
            AppText(
              text:
                  'Lorem ipsum dolor sit amet consectetur. Sit enim in sit purus justo pellentesque amet.',
              textSize: 8.sp,
            ),
            AppSize.h15.ph,
            Row(
              children: [
                AppText(
                  text: 'Egp 22.00',
                  textSize: 12.sp,
                  textWeight: FontWeight.w500,
                ),
                const Spacer(),
                SvgPicture.asset(
                  AppIcons.removeIcon,
                  fit: BoxFit.contain,
                ),
                AppSize.w15.pw,
                const AppText(
                  text: '1',
                  textWeight: FontWeight.w500,
                ),
                AppSize.w15.pw,
                SvgPicture.asset(
                  AppIcons.addIcon,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            AppSize.h40.ph,
            AppButton(
              height: AppSize.h48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: AppText(
                      text: AppStrings.addToBasket,
                      textWeight: FontWeight.w500,
                      textColor: AppColors.scaffoldColor,
                    ),
                  ),
                  Flexible(
                    child: AppText(
                      text: 'egp 22.00',
                      textWeight: FontWeight.w500,
                      textColor: AppColors.scaffoldColor,
                    ),
                  )
                ],
              ),
            ),
            AppSize.h15.ph,
          ],
        ).addAllPadding(16)
      ],
    );
  }
}
