import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynews/core/theme/theme_ext.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Some news today?",
        hintStyle: (Theme.of(
          context,
        ).textTheme.titleSmall)!.copyWith(color: context.appColors.placeholder),
        prefixIcon: Padding(
          padding: EdgeInsetsGeometry.directional(start: 10),
          child: SvgPicture.asset(
            "assets/icons/search.svg",
            colorFilter: .mode(context.appColors.bodyText, .srcIn),
          ),
        ),
        prefixIconConstraints: const BoxConstraints(
          minWidth: 24,
          minHeight: 24,
        ),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: context.appColors.bodyText, width: 1),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: context.appColors.bodyText, width: 1.5),
        ),
      ),
    );
  }
}
