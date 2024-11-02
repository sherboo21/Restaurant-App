import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/widgets/app_text.dart';

class BasketAppBar extends StatelessWidget {
  const BasketAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: AppStrings.basket,
                textWeight: FontWeight.w500,
                textSize: 12.sp,
              ),
              AppSize.h5.ph,
              AppText(
                text: AppStrings.pizzaKing,
                textColor: Colors.grey,
                textSize: 10.sp,
              )
            ],
          ),
        )
      ],
    );
  }
}
