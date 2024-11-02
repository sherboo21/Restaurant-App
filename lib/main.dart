import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/core/app/task.dart';

import 'core/di/dependency_injection.dart';
import 'core/helpers/bloc_observer.dart';
import 'core/routing/named_router_impl.dart';
import 'core/widgets/app_error_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    runApp(AppErrorWidgetClass(errorDetails: details));
  };
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await Future.wait<void>([ScreenUtil.ensureScreenSize(), setupGetIt()]);
  Bloc.observer = MyBlocObserver();
  runApp(TaskApp(
    appRouter: AppRouter(),
  ));
}
