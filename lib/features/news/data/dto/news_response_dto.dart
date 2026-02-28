import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mynews/features/news/data/dto/article_dto.dart';

part 'news_response_dto.freezed.dart';
part 'news_response_dto.g.dart';

@freezed
abstract class NewsResponseDto with _$NewsResponseDto {
  const factory NewsResponseDto({
    required String status,
    required int totalResults,
    required List<ArticleDto> articles,
  }) = _NewsResponseDto;

  factory NewsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseDtoFromJson(json);
}
