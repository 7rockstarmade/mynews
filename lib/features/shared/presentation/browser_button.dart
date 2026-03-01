import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BrowserButton extends StatelessWidget {
  const BrowserButton({super.key, required this.url, this.borderRadius = 16});

  final String url;
  final double borderRadius;

  Future<void> _launch(BuildContext context) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return;

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _launch(context),
        style: ElevatedButton.styleFrom(
          backgroundColor: scheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14),
          elevation: 0,
        ),
        child: Text(
          'Open in browser',
          style: (Theme.of(
            context,
          ).textTheme.titleMedium!).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
