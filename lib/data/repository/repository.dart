import 'package:value_listanable_example/data/server_api/models/models/article.dart';
import 'package:value_listanable_example/data/server_api/models/models/category.dart';
import 'package:value_listanable_example/data/server_api/server_api.dart';

class Repository {
  final _serviceApi = ServerApi();

  Future<List<Article>> getArticles(int id) async {
    try {
      final response = await _serviceApi.getArticles(id);
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
}
