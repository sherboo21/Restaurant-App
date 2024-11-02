import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';
import 'package:task/core/helpers/main_functions.dart';
import 'package:task/featuers/restaurant/logic/restaurant_cubit.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/widgets/app_list_view_separated.dart';
import '../../../../core/widgets/app_text.dart';
import 'item_details.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Align(
          alignment: Alignment.centerLeft,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            AppText(
              text: AppStrings.appetizers,
              textWeight: FontWeight.w600,
            ).addSymmetricPadding(hVal: AppSize.w15),
            AppSize.h15.ph,
            AppListViewSeparated(
              isHorizontal: false,
              itemCount: 3,
              itemBuilder: (context, index) => InkWell(
                onTap: () => customBottomSheet(
                    context: context,
                    scrollController:
                        context.read<RestaurantCubit>().scrollController,
                    content: const ItemDetails()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
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
                          AppSize.h35.ph,
                          AppText(
                            text: 'Egp 22.00',
                            textSize: 12.sp,
                            textWeight: FontWeight.w500,
                          ),
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
              ),
              separator: const Divider(),
            ),
            AppSize.h15.ph,
            Divider(
              thickness: 10,
              color: Colors.grey.shade200,
            ),
            AppSize.h15.ph,
            AppText(
              text: AppStrings.cheeseManakish,
              textWeight: FontWeight.w600,
            ).addSymmetricPadding(hVal: AppSize.w15),
            AppSize.h15.ph,
            AppListViewSeparated(
              isHorizontal: false,
              itemCount: 3,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Column(
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
                        AppSize.h35.ph,
                        AppText(
                          text: 'Egp 22.00',
                          textSize: 12.sp,
                          textWeight: FontWeight.w500,
                        ),
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
              separator: const Divider(),
            ),
          ]),
        ),
      ),
    );
  }
}
