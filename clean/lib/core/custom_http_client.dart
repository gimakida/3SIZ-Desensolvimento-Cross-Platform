import 'package:dio/dio.dart';

class CustomHttpClient {
  final Dio dio;

  CustomHttpClient(): dio = Dio();

  Future<Response> getPoducts()async{
    return await dio.get("https://gdapp.com.br/api/fiap/products");
  }
}