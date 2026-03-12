import 'package:api/domain/entities/product_entity.dart';
import 'package:api/domain/usecases/get_product_usecase.dart';
import 'package:flutter/material.dart';
//vai mandar
//privado é underline na frente
class ProductController extends ChangeNotifier{
final GetProductUsecase _getProductUsecase;
//criou uma lista de produto nula
List<ProductEntity> _products = [];
bool isLoading = false; // bool = true ou false
String? error;
ProductController (this._getProductUsecase);

// recebe a lista de produtos porem como leitura
List<ProductEntity> get products => _products;

//nao vai retornar, vai retornar loading e depois notificar para outra tela fetchproducts é busca produto
Future<void> fetchProducts()async{
  try{
    //se a lista deu certo entao nao tem erro
    isLoading = true;
    _products = await _getProductUsecase.execute();
    error = null;
  }catch(e){
    error = "Falha ao buscar produtos";
  } finally{
    isLoading = false;
    notifyListeners();
  }
}
}