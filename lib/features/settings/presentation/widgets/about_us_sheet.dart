import 'package:flutter/material.dart';
import 'package:mynews/core/theme/theme_ext.dart';
import 'package:mynews/features/shared/presentation/browser_button.dart';

class AboutUsSheet extends StatelessWidget {
  const AboutUsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.directional(
        start: 20,
        end: 20,
        top: 16,
        bottom: 35,
      ),
      child: Column(
        spacing: 6,
        mainAxisSize: .min,
        crossAxisAlignment: .stretch,
        children: [
          Text(
            "About us",
            textAlign: .center,
            style: (Theme.of(
              context,
            ).textTheme.displaySmall)!.copyWith(fontWeight: .w600),
          ),
          Text(
            "Lorem ipsum dolor sit amet consectetur adipiscing elit quisque faucibus ex sapien vitae pellentesque sem placerat in id cursus mi.",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: .center,
          ),
          Padding(
            padding: EdgeInsetsGeometry.directional(top: 50),
            child: Text(
              "API : newsapi.org",
              textAlign: .center,
              style: TextStyle(color: context.appColors.bodyText),
            ),
          ),
          BrowserButton(url: 'https://newsapi.org/'),
        ],
      ),
    );
  }
}
