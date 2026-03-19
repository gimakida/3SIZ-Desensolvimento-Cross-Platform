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
final List<dynamic> dataList = response.data is List ? response.data : [];
  return(dataList)
  .map((e) => ProductModel.fromJson(e))
  .map((model)=> model.toProductEntity())
  .toList();

 }

 //Método para cadastrar um produto
 Future<bool> createProduct(ProductEntity product) async{
  try{
    final model = ProductModel.fromProductEntity(product);
    await httpClient.createProducts(model.toJson());
    return true;
  }catch(e){ 
    return false;
  }
 }
}