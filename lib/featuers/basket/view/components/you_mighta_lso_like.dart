import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/widgets/app_list_view_separated.dart';
import '../../../../core/widgets/app_text.dart';

class YouMightALsoLike extends StatelessWidget {
  const YouMightALsoLike({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppText(
          text: AppStrings.youMightAlsoLike,
          textWeight: FontWeight.w500,
          textSize: 16.sp,
        ),
        AppSize.h15.ph,
        AppListViewSeparated(
          height: 201.w,
          itemCount: 4,
          itemBuilder: (context, index) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.r),
                    topLeft: Radius.circular(8.r)),
                child: Image.asset(
                  AppImages.pizzaImage,
                  fit: BoxFit.contain,
                ),
              ),
              AppSize.h8.ph,
              AppText(
                text: AppStrings.pizzaKing,
                textSize: 12.sp,
                textWeight: FontWeight.w500,
              ),
              AppSize.h5.ph,
              Row(
                children: [
                  const Icon(
                    Icons.access_time_outlined,
                    color: Colors.grey,
                  ),
                  AppSize.w5.pw,
                  AppText(
                    text: '36 mins',
                    textSize: 10.sp,
                    textColor: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
