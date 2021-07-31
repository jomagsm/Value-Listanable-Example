import 'package:dio/dio.dart';

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

  // Future<CharactersModel> getCharacters() async {
  //   try {
  //     Response<String> response = await _dio.get("/api/Characters/GetAll",
  //         queryParameters: {"PageNumber": 1, "PageSize": 200});
  //     return charactersModelFromJson(response.toString());
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}
