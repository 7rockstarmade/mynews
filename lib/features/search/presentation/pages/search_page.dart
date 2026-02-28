import 'package:flutter/material.dart';
import 'package:mynews/features/shared/article_widget.dart';
import 'package:mynews/features/search/presentation/widgets/search_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsetsGeometry.all(16),
          sliver: SliverToBoxAdapter(child: SearchWidget()),
        ),
        SliverPadding(
          padding: EdgeInsetsGeometry.directional(start: 16, end: 16),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: EdgeInsetsGeometry.directional(top: 8),
                child: ArticleWidget(
                  category: "Category",
                  newsTitle:
                      "Lorem ipsum dolor sit amet consectetur adipiscing elit quisque faucibus ex sapien vitae pellentesque sem placerat in id cursus mi.",
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
