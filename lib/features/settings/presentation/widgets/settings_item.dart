import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;
  const SettingsItem({
    super.key,
    required this.iconPath,
    required this.title,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          Row(
            spacing: 4,
            children: [
              SvgPicture.asset(iconPath),
              Text(title, style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
          ?trailing,
        ],
      ),
    );
  }
}
