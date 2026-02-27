import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final int index;
  const HomeAppBar({super.key, required this.index});
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
    final title = titles[index];
    return AppBar(
      title: Text(
        title!,
        style: Theme.of(
          context,
        ).textTheme.displayMedium?.copyWith(fontWeight: .w700),
      ),
      centerTitle: false,
    );
  }
}
