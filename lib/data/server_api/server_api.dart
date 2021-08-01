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

  Future<List<Article>> getArticles(String locale) async {
    try {
      // http://10.244.53.185:8080/api/v1/news/allNews
      Response<String> response = await _dio.get(
          "/news/all-output-news-by-lang",
          queryParameters: {"lang": locale});
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

  Future<List<Article>> getFilterDate(int id) async {
    try {
      Response<String> response = await _dio.get("/news/news-by-langAndName",
          queryParameters: {"lang": 'kg', 'id': id});

      return articleFromJson(response.toString());
    } catch (e) {
      throw e;
    }
  }
}
