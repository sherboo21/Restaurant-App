import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/core/helpers/extentions.dart';
import 'package:task/featuers/restaurant/view/components/header_card.dart';

import '../../../../core/helpers/app_imgs.dart';
import '../../../../core/helpers/app_size.dart';

class RestaurantHeader extends StatelessWidget {
  const RestaurantHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(
              top: AppSize.h50,
              bottom: AppSize.h25,
              left: AppSize.w15,
              right: AppSize.w15),
          height: 213.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppImages.pizzaImage,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Align(
            alignment: AlignmentDirectional.topCenter,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => context.pop(),
                      child: SvgPicture.asset(
                        AppIcons.arrowBackIcon,
                        fit: BoxFit.contain,
                      )),
                  SvgPicture.asset(
                    AppIcons.search2Icon,
                    fit: BoxFit.contain,
                  )
                ]),
          ),
        ),
        const HeaderCard()
      ],
    );
  }
}
