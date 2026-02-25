import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynews/core/theme/theme_ext.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  SvgPicture _navIcon(BuildContext context, String assetPath) {
    return SvgPicture.asset(
      assetPath,
      colorFilter: ColorFilter.mode(
        context.appColors.bodyText,
        BlendMode.srcIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(
        indicatorColor: Colors.transparent,

        labelTextStyle: WidgetStatePropertyAll(
          Theme.of(
            context,
          ).textTheme.titleSmall!.copyWith(color: context.appColors.bodyText),
        ),
      ),
      child: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: _navIcon(context, 'assets/icons/home.svg'),
            label: "Home",
          ),
          NavigationDestination(
            icon: _navIcon(context, "assets/icons/explore.svg"),
            label: "Explore",
          ),
          NavigationDestination(
            icon: _navIcon(context, "assets/icons/bookmark.svg"),
            label: "Bookmark",
          ),
          NavigationDestination(
            icon: _navIcon(context, "assets/icons/profile.svg"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
