import 'package:flutter/material.dart';
import 'package:task/core/helpers/extentions.dart';

import '../helpers/app_size.dart';

class AppListViewSeparated extends StatelessWidget {
  final int itemCount;
  final double? height;
  final bool? isHorizontal;
  final Widget? separator;
  final Widget Function(BuildContext, int) itemBuilder;

  const AppListViewSeparated({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.height,
    this.separator,
    this.isHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: AppSize.w15),
        scrollDirection:
            isHorizontal == false ? Axis.vertical : Axis.horizontal,
        physics: isHorizontal == false
            ? const NeverScrollableScrollPhysics()
            : const AlwaysScrollableScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: itemBuilder,
        separatorBuilder: (context, index) => separator ?? AppSize.w8.pw,
      ),
    );
  }
}
