//é um contrato que cria um elo de conexão entre, garante que vai ter uma lista de produtos
import 'package:api/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
  
} 