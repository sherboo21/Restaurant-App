import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/theme/app_colors.dart';

class AppRichText extends StatelessWidget {
  final String? title, title2;

  const AppRichText({super.key, required this.title, this.title2});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: title,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.textColor,
            fontFamily: 'Inter',
          ),
          children: [
            TextSpan(
              text: title2,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
                fontFamily: 'Inter',
              ),
            )
          ]),
    );
  }
}
