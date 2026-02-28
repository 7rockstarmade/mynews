import 'package:dio/dio.dart';
import 'package:mynews/features/news/data/dto/news_response_dto.dart';

class NewsApi {
  final Dio dio;
  NewsApi(this.dio);

  Future<NewsResponseDto> topHeadlines() async {
    try {
      final response = await dio.get(
        '/v2/top-headlines',
        queryParameters: {'country': 'us'},
      );
      return NewsResponseDto.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
