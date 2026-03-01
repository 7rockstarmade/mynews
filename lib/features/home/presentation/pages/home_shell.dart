import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:mynews/core/network/dio_client.dart';
import 'package:mynews/core/storage/hive.dart';
import 'package:mynews/features/home/presentation/bloc/nav_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_state.dart';
import 'package:mynews/features/home/presentation/widgets/home_appbar.dart';
import 'package:mynews/features/home/presentation/widgets/home_navbar.dart';

import 'package:mynews/features/news/data/datasources/news_api.dart';
import 'package:mynews/features/news/data/repository/news_repositotry.dart';
import 'package:mynews/features/news/presentation/pages/news_page.dart';
import 'package:mynews/features/recent/data/repository/recent_reposetory.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_bloc.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_event.dart';
import 'package:mynews/features/recent/presentation/pages/recent_page.dart';
import 'package:mynews/features/search/data/datasources/search_api.dart';
import 'package:mynews/features/search/data/repository/search_repository.dart';

import 'package:mynews/features/search/presentation/pages/search_page.dart';
import 'package:mynews/features/settings/presentation/pages/settings_page.dart';

class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  late final NewsApi _newsApi;
  late final NewsRepository _newsRepo;
  late final SearchApi _searchApi;
  late final SearchRepository _searchRepo;
  late final RecentRepository _recentRepo;
  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();

    _newsApi = NewsApi(DioClient.instance);
    _newsRepo = NewsRepository(_newsApi);
    _searchApi = SearchApi(DioClient.instance);
    _searchRepo = SearchRepository(_searchApi);
    _recentRepo = RecentRepository(Hive.box(HiveBoxes.recent));
    _pages = const [NewsPage(), SearchPage(), RecentPage(), SettingsPage()];
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<NewsRepository>.value(value: _newsRepo),
        RepositoryProvider<SearchRepository>.value(value: _searchRepo),
        RepositoryProvider<RecentRepository>.value(value: _recentRepo),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => NavBloc()),
          BlocProvider(
            create: (context) => RecentBloc(_recentRepo)..add(LoadRecent()),
          ),
        ],
        child: BlocBuilder<NavBloc, NavState>(
          builder: (context, state) {
            return Scaffold(
              appBar: const HomeAppBar(),
              body: IndexedStack(index: state.index, children: _pages),
              bottomNavigationBar: const HomeNavBar(),
            );
          },
        ),
      ),
    );
  }
}
