import 'package:dio/dio.dart';
import 'package:mynews/features/shared/data/dto/news_response_dto.dart';

class SearchApi {
  final Dio dio;
  SearchApi(this.dio);

  Future<NewsResponseDto> searchNews(String q) async {
    try {
      final response = await dio.get(
        '/v2/everything',
        queryParameters: {'q': q},
      );
      return NewsResponseDto.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
