import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:mynews/core/theme/theme_ext.dart';
import 'package:mynews/features/shared/data/models/article.dart';

class TrendingArticleWidget extends StatelessWidget {
  final Article article;
  const TrendingArticleWidget({super.key, required this.article});
  static final DateFormat _newsDateFormat = DateFormat(
    'dd MMM, HH:mm',
    'en_US',
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: .circular(12),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(article.imageUrl!, fit: .cover),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.directional(top: 7, bottom: 7),
            child: Column(
              spacing: 4,
              crossAxisAlignment: .start,
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  article.sourceName,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: context.appColors.bodyText,
                  ),
                ),
                Text(
                  article.title,
                  maxLines: 2,
                  overflow: .ellipsis,
                  style: Theme.of(context).textTheme.titleMedium,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
