import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../routing/named_router.dart';
import '../routing/named_router_impl.dart';
import '../theme/app_theme.dart';

class TaskApp extends StatelessWidget {
  final AppRouter appRouter;

  const TaskApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    );
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        builder: (context, child) => GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: MaterialApp(
                themeAnimationDuration: const Duration(milliseconds: 700),
                themeAnimationCurve: Curves.easeInOutCubic,
                initialRoute: Routes.layOutScreen,
                onGenerateRoute: appRouter.generateRoute,
                debugShowCheckedModeBanner: false,
                title: 'Task App',
                theme: AppTheme.lightThemeData,
              ),
            ));
  }
}