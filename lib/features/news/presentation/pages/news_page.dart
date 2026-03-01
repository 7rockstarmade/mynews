import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/news/data/repository/news_repositotry.dart';
import 'package:mynews/features/news/presentation/bloc/news_bloc.dart';
import 'package:mynews/features/news/presentation/bloc/news_event.dart';
import 'package:mynews/features/news/presentation/bloc/news_state.dart';
import 'package:mynews/features/shared/presentation/article_widget.dart';
import 'package:mynews/features/news/presentation/widgets/trending_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = context.read<NewsRepository>();
    return BlocProvider(
      create: (context) => NewsBloc(repo)..add(GetTopHeadlines()),
      child: BlocBuilder<NewsBloc, NewsState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: CircularProgressIndicator.adaptive()),
            loading: () => Center(child: CircularProgressIndicator.adaptive()),
            loaded: (articles) {
              return RefreshIndicator.adaptive(
                onRefresh: () async {
                  context.read<NewsBloc>().add(GetTopHeadlines());
                },
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: EdgeInsetsGeometry.directional(
                        start: 16,
                        end: 16,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: TrendingArticleWidget(article: articles[0]),
                      ),
                    ),
                    SliverPadding(
                      padding: EdgeInsetsGeometry.directional(
                        start: 16,
                        end: 16,
                      ),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: articles.length - 1,
                          (context, index) {
                            final article = articles[index + 1];
                            return Padding(
                              padding: EdgeInsetsGeometry.directional(top: 8),
                              child: ArticleWidget(article: article),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            loadFailure: (m) => Text("error"),
          );
        },
      ),
    );
  }
}
