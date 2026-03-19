
import 'package:api/domain/entities/product_entity.dart';
//é um contrato que cria um elo de conexão entre, garante que vai ter uma lista de produtos
abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
  Future<bool> createProduct(ProductEntity product);
  
} 