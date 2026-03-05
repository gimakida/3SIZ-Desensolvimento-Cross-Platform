import 'package:api/core/http_client.dart';
import 'package:api/data/models/product_model.dart';
import 'package:api/domain/entities/product_entity.dart';


class ProductDatasource {
  final  CustomHttpClient httpClient;

  ProductDatasource(this.httpClient);

 Future< List<ProductEntity>> getProducts() async{ // é preciso do async com promete que vai vir algo (future)
  final response = await httpClient.getProducts();
//ha uma lista dentro de data, entao é declarado as, e é cosiderado um elemento
//controller consome o service
  return(response.data as List).map((e) => ProductModel.fromJson(e)).toList();

 }
}