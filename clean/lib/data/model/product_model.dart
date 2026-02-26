import 'package:clean/domain/entities/product_entitty.dart';

class ProductModel extends ProductEntitty{
  ProductModel({
    required super.id,
    required super.title,
    required super.price,
  });
  factory ProductModel.fromJson(Map<String, dynamic>json){
  return ProductModel(id: json["id"], title: json["title"], price:json ["price"]);
  
  }
}