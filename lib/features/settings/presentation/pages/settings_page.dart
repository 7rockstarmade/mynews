import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/core/theme/bloc/theme_bloc.dart';
import 'package:mynews/core/theme/bloc/theme_event.dart';
import 'package:mynews/features/settings/presentation/widgets/about_us_sheet.dart';
import 'package:mynews/features/settings/presentation/widgets/reset_dialog.dart';
import 'package:mynews/features/settings/presentation/widgets/settings_item.dart';
import 'package:mynews/features/shared/presentation/show_sheet.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsetsGeometry.all(16),
      itemCount: 3,
      separatorBuilder: (context, index) => SizedBox(height: 30),
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return SettingsItem(
              onTap: () {
                showResetDialog(context);
              },
              iconPath: 'assets/icons/notification.svg',
              title: "Clear recents",
            );
          case 1:
            return SettingsItem(
              onTap: () {
                showSheet(context, AboutUsSheet());
              },
              iconPath: 'assets/icons/help.svg',
              title: 'About us',
            );
          case 2:
            return SettingsItem(
              onTap: () {
                context.read<ThemeBloc>().add(SwitchThemeEvent());
              },
              iconPath: 'assets/icons/theme_mode.svg',
              title: 'Dark Mode',
              trailing: SizedBox(
                height: 25,
                child: CupertinoSwitch(
                  value: context.watch<ThemeBloc>().state.isDarkMode,
                  onChanged: (value) {
                    context.read<ThemeBloc>().add(SwitchThemeEvent());
                  },
                ),
              ),
            );
          default:
            SizedBox();
        }
        return SizedBox();
      },
    );
  }
}
