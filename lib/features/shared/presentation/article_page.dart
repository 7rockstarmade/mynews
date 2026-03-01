import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mynews/core/theme/theme_ext.dart';
import 'package:mynews/features/shared/data/models/article.dart';
import 'package:mynews/features/shared/presentation/browser_button.dart';

class ArticlePage extends StatelessWidget {
  final Article article;
  const ArticlePage({super.key, required this.article});
  static final DateFormat _newsDateFormat = DateFormat(
    'dd MMM, HH:mm',
    'en_US',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          article.sourceName,
          style: (Theme.of(
            context,
          ).textTheme.displayMedium)!.copyWith(fontWeight: .w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 10,
            children: [
              ClipRRect(
                borderRadius: .circular(12),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    article.imageUrl.toString(),
                    fit: .cover,
                  ),
                ),
              ),
              Row(
                spacing: 4,
                children: [
                  SvgPicture.asset(
                    'assets/icons/clock.svg',
                    colorFilter: .mode(
                      context.appColors.bodyText,
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    _newsDateFormat.format(article.publishedAt.toLocal()),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: context.appColors.bodyText,
                    ),
                  ),
                ],
              ),
              Text(
                article.title,
                style: (Theme.of(
                  context,
                ).textTheme.displaySmall!).copyWith(fontWeight: .w700),
              ),
              Text(
                article.description!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              BrowserButton(url: article.url),
            ],
          ),
        ),
      ),
    );
  }
}
