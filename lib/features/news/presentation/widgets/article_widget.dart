import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mynews/core/theme/theme_ext.dart';

class ArticleWidget extends StatelessWidget {
  final String category;
  final String newsTitle;
  final String dateTime;
  final String imgUrl;
  const ArticleWidget({
    super.key,
    required this.category,
    required this.newsTitle,
    required this.dateTime,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 112,
      child: Row(
        spacing: 7,

        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 96,
              height: 96,
              child: Image.network(imgUrl, fit: BoxFit.cover),
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
