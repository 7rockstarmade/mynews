import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynews/core/theme/theme_ext.dart';
import 'package:mynews/features/home/presentation/bloc/nav_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_event.dart';
import 'package:mynews/features/home/presentation/bloc/nav_state.dart';

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
    return BlocBuilder<NavBloc, NavState>(
      builder: (context, state) {
        return NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.transparent,

            labelTextStyle: WidgetStatePropertyAll(
              Theme.of(context).textTheme.titleSmall!.copyWith(
                color: context.appColors.bodyText,
              ),
            ),
          ),
          child: NavigationBar(
            selectedIndex: state.index,
            onDestinationSelected: (index) {
              context.read<NavBloc>().add(NavIndexChange(index));
            },
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
      },
    );
  }
}
