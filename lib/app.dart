import 'package:flutter/material.dart';
import 'package:mynews/core/theme/app_theme.dart';
import 'package:mynews/features/home/presentation/pages/home_shell.dart';

class MyNewsApp extends StatelessWidget {
  const MyNewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeShell(),
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
    );
  }
}
