import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/search/data/repository/search_repository.dart';
import 'package:mynews/features/search/presentation/bloc/search_bloc.dart';
import 'package:mynews/features/search/presentation/bloc/search_state.dart';
import 'package:mynews/features/shared/article_widget.dart';
import 'package:mynews/features/search/presentation/widgets/search_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repo = context.read<SearchRepository>();
    return BlocProvider(
      create: (context) => SearchBloc(repo),
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsetsGeometry.all(16),
            sliver: SliverToBoxAdapter(child: SearchWidget()),
          ),
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return state.when(
                initial: () => SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: Text("Search me!")),
                ),
                loading: () => SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(child: CircularProgressIndicator.adaptive()),
                ),
                loaded: (articles) => SliverPadding(
                  padding: EdgeInsetsGeometry.directional(start: 16, end: 16),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: articles.length,
                      (context, index) {
                        final article = articles[index];
                        return Padding(
                          padding: EdgeInsetsGeometry.directional(top: 8),
                          child: ArticleWidget(
                            category: article.sourceName,
                            newsTitle: article.title,
                            dateTime: article.publishedAt.toString(),
                            imgUrl: article.imageUrl.toString(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                loadFailure: (message) => Text('error'),
              );
            },
          ),
        ],
      ),
    );
  }
}
