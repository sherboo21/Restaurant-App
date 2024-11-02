import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

import '../../../../core/helpers/app_size.dart';
import '../../../../core/helpers/app_strings.dart';
import '../../../../core/widgets/app_list_view_separated.dart';
import '../../../../core/widgets/app_text.dart';
import '../../logic/home_cubit.dart';

class QuickBrowse extends StatelessWidget {
  const QuickBrowse({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: AppStrings.quickBrowse,
          textWeight: FontWeight.w600,
        ).addOnlyPadding(
            bVal: AppSize.w15,
            lVal: AppSize.w15,
            rVal: AppSize.w15,
            tVal: AppSize.h25),
        AppListViewSeparated(
          height: AppSize.h80,
          itemCount: context.read<HomeCubit>().quickBrowseList.length,
          itemBuilder: (context, index) => Container(
              width: 124.w,
              padding: appContainerPadding,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: index == 1
                      ? const Color(0xff067B9600)
                      : const Color(0xFFFF0000).withOpacity(0.10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    context.read<HomeCubit>().quickBrowseList[index].img,
                    fit: BoxFit.contain,
                  ),
                  AppSize.h8.ph,
                  AppText(
                    text:
                        context.read<HomeCubit>().quickBrowseList[index].title,
                    textSize: 12.sp,
                    textWeight: FontWeight.w500,
                  )
                ],
              )),
        )
      ],
    ));
  }
}
