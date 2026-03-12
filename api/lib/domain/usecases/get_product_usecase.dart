import 'package:api/domain/entities/product_entity.dart';
import 'package:api/domain/repositories/product_repository.dart';

class GetProductUsecase {
  final ProductRepository productRepository;

//construtor
  GetProductUsecase(this.productRepository);

  Future<List<ProductEntity>> execute()async{
    return productRepository.getProducts();
    
  }
}