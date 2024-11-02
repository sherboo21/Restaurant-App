import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_list_view_separated.dart';
import '../../../../core/widgets/app_rich_text.dart';
import '../../../../core/widgets/app_text.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return AppListViewSeparated(
      isHorizontal: false,
      itemCount: 4,
      itemBuilder: (context, index) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: AppStrings.pizzaKing,
                      textWeight: FontWeight.w600,
                    ),
                    AppSize.h5.ph,
                    AppText(
                      text: AppStrings.closed,
                      textSize: 12.sp,
                      textWeight: FontWeight.w500,
                    ),
                    AppSize.h12.ph,
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.editIcon,
                          fit: BoxFit.contain,
                        ),
                        AppSize.w5.pw,
                        AppText(
                          text: AppStrings.edit,
                          textSize: 12.sp,
                          textWeight: FontWeight.w500,
                          textColor: AppColors.mainAppColor,
                        ),
                      ],
                    ),
                    AppSize.h12.ph,
                    const AppRichText(
                      title: '5.00',
                      title2: ' EGY',
                    )
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: Image.asset(
                  AppImages.pizzaImage,
                  fit: BoxFit.contain,
                  height: 88.h,
                  width: 88.h,
                ),
              )
            ],
          ),
          AppSize.h15.ph,
          AppButton(
            height: AppSize.h48,
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete_outline,
                  color: AppColors.scaffoldColor,
                ),
                AppSize.w15.pw,
                AppText(
                  text: '1',
                  textColor: AppColors.scaffoldColor,
                  textWeight: FontWeight.w500,
                ),
                AppSize.w15.pw,
                Icon(
                  Icons.add,
                  color: AppColors.scaffoldColor,
                ),
              ],
            ),
          )
        ],
      ),
      separator: const Divider().addSymmetricPadding(vVal: AppSize.h5),
    );
  }
}
