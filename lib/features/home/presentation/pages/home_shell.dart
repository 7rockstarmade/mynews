import 'package:flutter/material.dart';
import 'package:mynews/features/home/presentation/widgets/home_app_bar.dart';
import 'package:mynews/features/home/presentation/widgets/home_nav_bar.dart';

class HomeShell extends StatelessWidget {
  const HomeShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: HomeNavBar(),
    );
  }
}
