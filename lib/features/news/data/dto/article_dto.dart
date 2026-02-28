import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mynews/features/news/data/dto/source_dto.dart';

part 'article_dto.freezed.dart';
part 'article_dto.g.dart';

@freezed
abstract class ArticleDto with _$ArticleDto {
  const factory ArticleDto({
    required SourceDto source,
    String? author,
    required String title,
    String? description,
    required String url,
    String? urlToImage,
    required DateTime publishedAt,
    String? content,
  }) = _ArticleDto;

  factory ArticleDto.fromJson(Map<String, dynamic> json) =>
      _$ArticleDtoFromJson(json);
}
