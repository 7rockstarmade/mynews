import 'package:mynews/features/shared/data/dto/article_dto.dart';
import 'package:mynews/features/shared/data/models/article.dart';

extension ArticleMapper on ArticleDto {
  Article toModel() {
    return Article(
      title: title,
      url: url,
      sourceName: source.name,
      publishedAt: publishedAt,
      author: author,
      description: description,
      imageUrl: urlToImage,
      content: content,
    );
  }
}
