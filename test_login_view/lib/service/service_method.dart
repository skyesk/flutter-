import 'dart:io';
import 'package:dio/dio.dart';

//获取网络数据的方法
Future request( url, Map<String, Object> map, {formData, Map<String, Object> queryParameters}) async {
  try {
    Response response;
    Dio dio = new Dio();
    dio.options.contentType =
        ContentType.parse("application/x-www-form-urlencoded");
    if (formData == null) {
      response = await dio.get(url);
    } else {
      response = await dio.get(url,queryParameters: formData);
    }
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw Exception('后端接口出现异常');
    }
  } catch (e) {
    return print("ERROR +++===+++===+++=== " + "$e");
  }
}