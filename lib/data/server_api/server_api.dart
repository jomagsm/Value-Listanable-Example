import 'package:dio/dio.dart';
import 'package:value_listanable_example/data/server_api/models/models/article.dart';
import 'package:value_listanable_example/data/server_api/models/models/category.dart';

import 'dio_settings.dart';

class ServerApi {
  static ServerApi _instance = new ServerApi.internal();

  factory ServerApi() => _instance;

  ServerApi.internal() {
    _dioSettings = DioSettings();
    _dio = _dioSettings.dio;
  }

  late DioSettings _dioSettings;
  late Dio _dio;

  late Map<String, dynamic> _request;

  Future<List<Article>> getArticles(int id) async {
    try {
      Response<String> response = await _dio.get(
        "/news/news-by-lang/$id",
      );

      return articleFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }

  Future<List<Category>> getCategory() async {
    try {
      Response<String> response = await _dio.get(
        "/filters/all",
      );

      return categoryFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }
}
