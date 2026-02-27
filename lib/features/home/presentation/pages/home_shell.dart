import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_state.dart';
import 'package:mynews/features/home/presentation/widgets/home_appbar.dart';
import 'package:mynews/features/home/presentation/widgets/home_navbar.dart';
import 'package:mynews/features/news/presentation/pages/news_page.dart';

class HomeShell extends StatelessWidget {
  const HomeShell({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [NewsPage()];
    return BlocProvider(
      create: (_) => NavBloc(),
      child: BlocBuilder<NavBloc, NavState>(
        builder: (context, state) {
          return Scaffold(
            appBar: HomeAppBar(),
            body: IndexedStack(index: state.index, children: pages),
            bottomNavigationBar: HomeNavBar(),
          );
        },
      ),
    );
  }
}
