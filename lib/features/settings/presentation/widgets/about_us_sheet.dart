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
            "MyNews is a simple news app that helps you stay updated with top headlines, search topics you care about, and quickly revisit recently opened articles.",
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: .center,
          ),

          Center(
            child: ClipRRect(
              borderRadius: .circular(16),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image.asset('assets/images/us.jpg', fit: .cover),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.directional(top: 50),
            child: Text(
              "github: 7rockstarmade\nAPI : newsapi.org",
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
