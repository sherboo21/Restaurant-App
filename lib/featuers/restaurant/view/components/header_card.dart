import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_rich_text.dart';
import '../../../../core/widgets/app_text.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -AppSize.h40,
      left: AppSize.w15,
      right: AppSize.w15,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.scaffoldColor),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      AppImages.pizzaImage,
                      fit: BoxFit.contain,
                      height: AppSize.h48,
                      width: AppSize.w48,
                    ),
                  ),
                  AppSize.w8.pw,
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: AppStrings.pizzaKing,
                          textSize: 12.sp,
                          textWeight: FontWeight.w500,
                        ),
                        AppSize.h5.ph,
                        AppText(
                          text: AppStrings.pizzaPasta,
                          textSize: 8.sp,
                        ),
                        AppSize.h5.ph,
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            AppSize.w5.pw,
                            const AppRichText(
                              title: '4.5',
                              title2: ' (100+)',
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              AppSize.h15.ph,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                  child: Column(
                    children: [
                      AppText(
                        text: AppStrings.deliveryIn,
                        textSize: 10.sp,
                        textWeight: FontWeight.w500,
                        textColor: Colors.grey,
                      ),
                      AppSize.h5.ph,
                      AppText(
                        text: AppStrings.free,
                        textSize: 10.sp,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.lineIcon,
                  fit: BoxFit.contain,
                ),
                Flexible(
                  child: Column(
                    children: [
                      AppText(
                        text: AppStrings.deliveryTime,
                        textSize: 10.sp,
                        textWeight: FontWeight.w500,
                        textColor: Colors.grey,
                      ),
                      AppSize.h5.ph,
                      AppText(
                        text: '36 mins',
                        textSize: 10.sp,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  AppIcons.lineIcon,
                  fit: BoxFit.contain,
                ),
                Flexible(
                  child: Column(
                    children: [
                      AppText(
                        text: AppStrings.deliveryBy,
                        textColor: Colors.grey,
                        textSize: 10.sp,
                        textWeight: FontWeight.w500,
                      ),
                      AppSize.h5.ph,
                      AppText(
                        text: AppStrings.free,
                        textSize: 10.sp,
                        textWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                )
              ]).addSymmetricPadding(hVal: AppSize.w15)
            ],
          ),
        ),
      ),
    );
  }
}
