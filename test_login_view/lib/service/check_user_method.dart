import './service_method.dart';
import '../configs/url_config.dart';
import 'package:dio/dio.dart';

Future check_user()async{

  Dio dio = new Dio();
  Response response= await dio.get(ServiceUrlPath.checkUser,queryParameters: {"id":1,"password":"123456"});
  if (response.data==1) {
    return true;
  }else{
    return false;
  }
}