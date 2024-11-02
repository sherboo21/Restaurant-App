import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit()
      : super(AppState(
          tabIndex: 0,
        ));

  void changeTabIndex(int val) => emit(state.copyWith(tabIndex: val));
}
