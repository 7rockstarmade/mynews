import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_bloc.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_state.dart';
import 'package:mynews/features/shared/presentation/article_page.dart';
import 'package:mynews/features/shared/presentation/article_widget.dart';

class RecentPage extends StatelessWidget {
  const RecentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentBloc, RecentState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Center(child: CircularProgressIndicator.adaptive());
        }
        if (state.articles.isEmpty) {
          return Center(child: Text("You have no recent news ("));
        }
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsetsGeometry.directional(start: 16, end: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: state.articles.length,
                  (context, index) {
                    final article = state.articles[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => ArticlePage(article: article),
                          ),
                        );
                      },
                      child: ArticleWidget(article: article),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
