import 'package:flutter/material.dart';
import 'package:task/core/helpers/app_size.dart';
import 'package:task/core/helpers/extentions.dart';
import 'package:task/core/widgets/app_scaffold.dart';
import 'package:task/featuers/basket/view/components/basket_app_bar.dart';
import 'package:task/featuers/basket/view/components/body.dart';
import 'package:task/featuers/basket/view/components/you_mighta_lso_like.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: ListView(
      padding: appPadding,
      children: [
        const BasketAppBar(),
        AppSize.h8.ph,
        const Body(),
        AppSize.h15.ph,
        const YouMightALsoLike(),
        const YouMightALsoLike()
      ],
    ));
  }
}
