import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient {
  DioClient._();
  static final Dio instance = Dio(
    BaseOptions(
      baseUrl: dotenv.env['NEWS_BASE_URL']!,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      headers: {
        'Accept': 'application/json',
        'X-Api-Key': dotenv.env['NEWS_API_KEY'],
      },
      validateStatus: (s) => s != null && s >= 200 && s < 300,
    ),
  );
}
