import 'package:flutter/material.dart';
import 'package:mynews/features/home/presentation/widgets/home_appbar.dart';
import 'package:mynews/features/home/presentation/widgets/home_navbar.dart';

class HomeShell extends StatelessWidget {
  const HomeShell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      bottomNavigationBar: HomeNavBar(),
    );
  }
}
