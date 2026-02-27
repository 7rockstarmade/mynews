import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/core/theme/app_theme.dart';
import 'package:mynews/core/theme/bloc/theme_bloc.dart';
import 'package:mynews/core/theme/bloc/theme_state.dart';
import 'package:mynews/features/home/presentation/pages/home_shell.dart';

class MyNewsApp extends StatelessWidget {
  const MyNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            home: HomeShell(),
            theme: AppTheme.light(),
            darkTheme: AppTheme.dark(),
            themeMode: state.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
