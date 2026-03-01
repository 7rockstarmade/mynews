import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mynews/features/news/data/repository/news_repositotry.dart';
import 'package:mynews/features/news/presentation/bloc/news_bloc.dart';
import 'package:mynews/features/news/presentation/bloc/news_event.dart';
import 'package:mynews/features/news/presentation/bloc/news_state.dart';
import 'package:mynews/features/shared/article_widget.dart';
import 'package:mynews/features/news/presentation/widgets/trending_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  static final DateFormat _newsDateFormat = DateFormat(
    'dd MMM, HH:mm',
    'en_US',
  );

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
                        child: TrendingArticleWidget(
                          category: articles[0].sourceName,
                          newsTitle: articles[0].title,
                          dateTime: _newsDateFormat.format(
                            articles[0].publishedAt.toLocal(),
                          ),
                          imgUrl: articles[0].imageUrl.toString(),
                        ),
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
                              child: ArticleWidget(
                                category: article.sourceName,
                                newsTitle: article.title,
                                dateTime: _newsDateFormat.format(
                                  article.publishedAt.toLocal(),
                                ),
                                imgUrl: article.imageUrl.toString(),
                              ),
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
