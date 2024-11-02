import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/helpers/extentions.dart';

// Show BottomSheet //
customBottomSheet({
  required BuildContext context,
  required Widget content,
  required ScrollController scrollController,
  double? paddingHorizontal,
  double? paddingVertical,
  bool? isDismissible,
}) {
  return showModalBottomSheet(
    isDismissible: isDismissible ?? true,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(16.r),
    )),
    backgroundColor: Colors.white,
    context: context,
    isScrollControlled: true,
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        controller: scrollController,
        child: content.addSymmetricPadding(
            hVal: paddingHorizontal ?? 0.0, vVal: paddingVertical ?? 0.0),
      ),
    ),
  );
}
