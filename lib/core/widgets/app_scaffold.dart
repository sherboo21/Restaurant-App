import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final Widget? body, bottomNavBar;

  const AppScaffold({super.key, required this.body, this.bottomNavBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: body!,
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
