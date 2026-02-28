import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynews/core/theme/theme_ext.dart';
import 'package:mynews/features/home/presentation/bloc/nav_bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_event.dart';
import 'package:mynews/features/home/presentation/bloc/nav_state.dart';

class HomeNavBar extends StatelessWidget {
  const HomeNavBar({super.key});

  SvgPicture _navIcon(BuildContext context, String assetPath, bool isSelected) {
    return SvgPicture.asset(
      assetPath,
      colorFilter: ColorFilter.mode(
        isSelected
            ? Theme.of(context).colorScheme.primary
            : context.appColors.bodyText,
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

            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((
              states,
            ) {
              final isSelected = states.contains(WidgetState.selected);
              return Theme.of(context).textTheme.titleSmall!.copyWith(
                color: isSelected
                    ? Theme.of(context).colorScheme.primary
                    : context.appColors.bodyText,
              );
            }),
          ),
          child: NavigationBar(
            selectedIndex: state.index,
            onDestinationSelected: (index) {
              context.read<NavBloc>().add(NavIndexChange(index));
            },
            destinations: [
              NavigationDestination(
                icon: _navIcon(context, 'assets/icons/home.svg', false),
                selectedIcon: _navIcon(
                  context,
                  'assets/icons/home_selected.svg',
                  true,
                ),
                label: "Home",
              ),
              NavigationDestination(
                icon: _navIcon(context, "assets/icons/explore.svg", false),
                selectedIcon: _navIcon(
                  context,
                  'assets/icons/explore_selected.svg',
                  true,
                ),
                label: "Search",
              ),
              NavigationDestination(
                icon: _navIcon(context, "assets/icons/bookmark.svg", false),
                selectedIcon: _navIcon(
                  context,
                  'assets/icons/bookmark_selected.svg',
                  true,
                ),
                label: "Bookmark",
              ),
              NavigationDestination(
                icon: _navIcon(context, "assets/icons/profile.svg", false),
                selectedIcon: _navIcon(
                  context,
                  'assets/icons/profile_selected.svg',
                  true,
                ),
                label: "Settings",
              ),
            ],
          ),
        );
      },
    );
  }
}
