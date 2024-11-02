import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/featuers/home/view/home_screen.dart';

class LayoutCubit extends Cubit<int> {
  LayoutCubit() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar ///

  void updateIndex(int index) => emit(index);

  /// for navigation button on single page ///

  void getHome() => emit(0);

  void getSearch() => emit(1);

  void getOrders() => emit(2);

  void getAccount() => emit(3);

  PageController pageController = PageController();

  final List<Widget> screens = [
    const HomeScreen(),
    const Center(child: Text('Search')),
    const Center(child: Text('Orders')),
    const Center(child: Text('Account')),
  ];

  @override
  Future<void> close() {
    pageController.dispose();
    return super.close();
  }
}
