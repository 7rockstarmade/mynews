import 'package:mynews/features/shared/data/models/article.dart';

class RecentState {
  final List<Article> articles;
  final bool isLoading;

  const RecentState({required this.articles, required this.isLoading});

  const RecentState.initial() : articles = const [], isLoading = false;

  const RecentState.loading() : articles = const [], isLoading = true;

  const RecentState.success(List<Article> recents)
    : articles = recents,
      isLoading = false;
}
