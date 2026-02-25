import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Bookmark',
        style: Theme.of(
          context,
        ).textTheme.displayMedium?.copyWith(fontWeight: .w700),
      ),
      centerTitle: false,
    );
  }
}
