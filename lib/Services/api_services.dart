import 'package:dio/dio.dart';
import 'package:task_interview/Constants/data_const.dart';

class ApiServices {

  late Dio dio;

  ApiServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 60 seconds,
      receiveTimeout: 20 * 1000,
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getDataFromServer() async {
    try {
      Response response = await dio.get('faq');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      return [];
    }

  }




}
