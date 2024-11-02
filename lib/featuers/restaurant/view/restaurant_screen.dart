import 'package:flutter/material.dart';
import 'package:task/core/helpers/extentions.dart';
import 'package:task/core/widgets/app_scaffold.dart';
import 'package:task/featuers/restaurant/view/components/body.dart';
import 'package:task/featuers/restaurant/view/components/restaurant_header.dart';
import 'package:task/featuers/restaurant/view/components/tabs.dart';

import '../../../core/helpers/app_size.dart';
import 'components/bottom_nav.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          const RestaurantHeader(),
          AppSize.h50.ph,
          const Tabs(),
          const Body(),
          const BottomNav()
        ],
      ),
    );
  }
}
