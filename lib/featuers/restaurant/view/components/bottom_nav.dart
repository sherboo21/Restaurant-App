import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';
import 'package:task/core/routing/named_router.dart';

import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Container(
        padding: appContainerPadding,
        child: Column(
          children: [
            AppText(
              text: AppStrings.add,
              textSize: 12.sp,
            ),
            AppSize.h10.ph,
            AppButton(
              height: AppSize.h48,
              onTap: () => context.pushNamed(Routes.basketScreen),
              title: '0 ${AppStrings.viewBasket}',
              background: AppColors.mainAppColor.withOpacity(0.5),
            ),
            AppSize.h10.ph,
          ],
        ),
      ),
    );
  }
}
