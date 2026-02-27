import 'package:flutter/material.dart';
import 'package:mynews/features/news/presentation/widgets/article_widget.dart';
import 'package:mynews/features/news/presentation/widgets/trending_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsetsGeometry.directional(start: 16, end: 16),
          sliver: SliverToBoxAdapter(
            child: TrendingArticleWidget(
              category: "Category",
              newsTitle: "News",
              dateTime: "dateTime",
              imgUrl:
                  "https://upload.wikimedia.org/wikipedia/commons/3/3b/Icon_of_the_Seas.jpg",
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.directional(start: 16, end: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsetsGeometry.directional(top: 8),
                child: ArticleWidget(
                  category: "Category",
                  newsTitle: "News",
                  dateTime: "dateTime",
                  imgUrl:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUHpsgmzjuWD7eFzWnsaX1vBcf5-dIFzu_oQ&s",
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
