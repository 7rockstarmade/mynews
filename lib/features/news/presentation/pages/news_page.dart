import 'package:flutter/material.dart';
import 'package:mynews/features/news/presentation/widgets/article_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: ArticleWidget(
              category: "Category",
              newsTitle: "News",
              dateTime: "dateTime",
              imgUrl:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUHpsgmzjuWD7eFzWnsaX1vBcf5-dIFzu_oQ&s",
            ),
          ),
        ),
      ],
    );
  }
}
