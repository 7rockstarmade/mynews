import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynews/features/settings/presentation/widgets/settings_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsetsGeometry.all(16),
      itemCount: 3,
      separatorBuilder: (context, index) => SizedBox(height: 24),
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return SettingsItem(
              iconPath: 'assets/icons/notification.svg',
              title: "Notifications",
            );
          case 1:
            return SettingsItem(
              iconPath: 'assets/icons/help.svg',
              title: 'Help',
            );
          case 2:
            return SettingsItem(
              iconPath: 'assets/icons/theme_mode.svg',
              title: 'Dark Mode',
              trailing: SizedBox(
                height: 25,
                child: CupertinoSwitch(value: false, onChanged: (value) {}),
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
