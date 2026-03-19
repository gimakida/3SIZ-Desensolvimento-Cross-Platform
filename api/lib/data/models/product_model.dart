//transforma map em entidade
// A diferença: ProductEntity é a camada de negócio, ProductModel é a camada de dados
import 'package:api/domain/entities/product_entity.dart';

class ProductModel {
  // Construtor que recebe id, title e price
  final int id;
  final String title;
  final String price;

  ProductModel({required this.id, required this.title, required this.price});

  // Factory é um construtor especial que cria um ProductModel a partir de um JSON (Map)
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'], // Pega o id do JSON
      title: json['title'], // Pega o title do JSON
      price: json['price'], // Pega o price do JSON
    );
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'price': price};
  }

 
  //classe ser criada atraves de seus proprios atributos, como se fosse fabricar novos atributos atraves de seus proprios parametro, é um conversor
 //transforma em um model para usar na api
  factory ProductModel.fromProductEntity(ProductEntity product_entity) {
    return ProductModel(
      id: product_entity.id,
      title: product_entity.title,
      price: product_entity.price,
    );
  }
  //pega o veio da api para usar no sistema
  ProductEntity toProductEntity() {
    return ProductEntity(
      id: id,
      title: title,
       price: price);
  }
}
