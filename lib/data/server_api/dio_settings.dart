import 'package:dio/dio.dart';
import 'error_handler.dart';

class DioSettings {
  DioSettings() {
    initialSettings();
  }

  static final mainServer = "https://news-hackathon.herokuapp.com/api";

  Dio dio = Dio(BaseOptions(
    baseUrl: mainServer,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));

  void initialSettings() {
    Interceptors interceptors = dio.interceptors;

    interceptors.requestLock.lock();

    interceptors.clear();
    interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Do something before request is sent
          return handler.next(options); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        },
        onResponse: (response, handler) {
          // Do something with response data

          return handler.next(response); // continue
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: return `dio.reject(dioError)`
        },
        onError: (DioError error, handler) {
          if (error.type == DioErrorType.connectTimeout) {
            return handler.next(
              DioError(
                error: 'Server do not answer',
                response: Response(
                  statusCode: 400,
                  statusMessage: 'Server do not answer',
                  requestOptions: error.requestOptions,
                ),
                requestOptions: error.requestOptions,
              ),
            );
          } else if (error.message.contains('SocketException:')) {
            return handler.next(
              DioError(
                error: 'Server do not answer',
                response: Response(
                  statusCode: 400,
                  statusMessage: 'Server do not answer',
                  requestOptions: error.requestOptions,
                ),
                requestOptions: error.requestOptions,
              ),
            );
          } else if (error.response!.statusCode == 401) {
            ErrorHandler().showError(
              DioError(
                error: ErrorHandlerType.auth,
                requestOptions: error.requestOptions,
              ),
            );
          }
          print(error.requestOptions.path);
          return handler.next(error); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: return `dio.resolve(response)`.
        },
      ),
    );

    interceptors.add(LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    ));

    interceptors.requestLock.unlock();
  }

  Future<void> initialAuthData(String? authToken) async {
    dio.options.headers["Authorization"] = "Bearer $authToken";
  }
}
