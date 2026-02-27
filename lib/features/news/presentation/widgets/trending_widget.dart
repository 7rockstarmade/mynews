import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mynews/core/theme/theme_ext.dart';

class TrendingArticleWidget extends StatelessWidget {
  final String category;
  final String newsTitle;
  final String dateTime;
  final String imgUrl;
  const TrendingArticleWidget({
    super.key,
    required this.category,
    required this.newsTitle,
    required this.dateTime,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          ClipRRect(
            borderRadius: .circular(12),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(imgUrl, fit: .cover),
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
                  category,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: context.appColors.bodyText,
                  ),
                ),
                Text(newsTitle, style: Theme.of(context).textTheme.titleMedium),
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
                      dateTime,
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
