import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return NavigationBarTheme(
      data: NavigationBarThemeData(indicatorColor: Colors.transparent),
      child: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            label: "Home",
          ),
          NavigationDestination(
            icon: SvgPicture.asset("assets/icons/explore.svg"),
            label: "Explore",
          ),
          NavigationDestination(
            icon: SvgPicture.asset("assets/icons/bookmark.svg"),
            label: "Bookmark",
          ),
          NavigationDestination(
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
