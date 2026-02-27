import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_state.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final Map<int, String> titles = {
      0: 'MyNews',
      1: 'Explore',
      2: 'Bookmark',
      3: 'Settings',
    };

    return BlocBuilder<NavBloc, NavState>(
      buildWhen: (p, c) => p.index != c.index,
      builder: (context, state) {
        final title = titles[state.index];
        return AppBar(
          title: Text(
            title!,
            style: Theme.of(
              context,
            ).textTheme.displayMedium?.copyWith(fontWeight: .w700),
          ),
          centerTitle: false,
        );
      },
    );
  }
}
