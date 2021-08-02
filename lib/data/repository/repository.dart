import 'package:value_listanable_example/data/server_api/models/models/article.dart';
import 'package:value_listanable_example/data/server_api/models/models/category.dart';
import 'package:value_listanable_example/data/server_api/server_api.dart';

class Repository {
  final _serviceApi = ServerApi();

  Future<List<Article>> getArticles(String locale) async {
    try {
      final response = await _serviceApi.getArticles(locale);
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<List<Category>> getCategory() async {
    try {
      final response = await _serviceApi.getCategory();
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<Article> getArticleById(int id) async {
    try {
      final response = await _serviceApi.getArticleById(id);
      return response;
    } catch (e) {
      throw (e);
    }
  }

  Future<List<Article>> getFilterDate(int id) async {
    try {
      final response = await _serviceApi.getFilterDate(id);
      return response;
    } catch (e) {
      throw (e);
    }
  }
}
