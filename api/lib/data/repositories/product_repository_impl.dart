import 'package:api/data/datasources/product_datasource.dart';
import 'package:api/domain/entities/product_entity.dart';
import 'package:api/domain/repositories/product_repository.dart';

class ProductRepositoryImpl extends ProductRepository{

final ProductDatasource productDatasource;

ProductRepositoryImpl(this.productDatasource)

@override
Future<List<ProductEntity>> getProducts(){
  return productDatasource.getProducts();
}

}