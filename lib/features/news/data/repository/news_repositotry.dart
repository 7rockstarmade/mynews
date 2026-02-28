import 'package:mynews/features/news/data/datasources/news_api.dart';
import 'package:mynews/features/shared/data/mappers/article_mapper.dart';
import 'package:mynews/features/shared/data/models/article.dart';

class NewsRepository {
  final NewsApi api;
  NewsRepository(this.api);

  Future<List<Article>> getTopHeadlines() async {
    final dto = await api.topHeadlines();
    return dto.articles.map((e) => e.toModel()).toList();
  }
}
