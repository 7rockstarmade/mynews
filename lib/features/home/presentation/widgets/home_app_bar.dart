import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Bookmark",
      style: Theme.of(
        context,
      ).textTheme.displayMedium?.copyWith(fontWeight: .w700),
    ),
    centerTitle: false,
  );
}
