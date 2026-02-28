import 'package:mynews/features/search/data/datasources/search_api.dart';
import 'package:mynews/features/shared/data/mappers/article_mapper.dart';
import 'package:mynews/features/shared/data/models/article.dart';

class SearchRepository {
  final SearchApi api;
  SearchRepository(this.api);

  Future<List<Article>> getNewsBySearch(String q) async {
    final dto = await api.searchNews(q);
    return dto.articles.map((e) => e.toModel()).toList();
  }
}
