import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mynews/core/theme/theme_ext.dart';
import 'package:mynews/features/shared/data/models/article.dart';

class ArticleWidget extends StatelessWidget {
  final Article article;
  const ArticleWidget({super.key, required this.article});
  static final DateFormat _newsDateFormat = DateFormat(
    'dd MMM, HH:mm',
    'en_US',
  );
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: Row(
        spacing: 7,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 96,
              height: 96,
              child: (article.imageUrl != null && article.imageUrl!.isNotEmpty)
                  ? Image.network(article.imageUrl!, fit: BoxFit.cover)
                  : Image.asset('assets/images/splash_logo.png'),
            ),
          ),
          Expanded(
            child: Padding(
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
          ),
        ],
      ),
    );
  }
}
