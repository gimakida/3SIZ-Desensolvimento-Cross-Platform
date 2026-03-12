import 'package:api/core/http_client.dart';
import 'package:api/data/datasources/product_datasource.dart';
import 'package:api/data/repositories/product_repository_impl.dart';
import 'package:api/domain/usecases/get_product_usecase.dart';
import 'package:api/presentation/controllers/product_controller.dart';
import 'package:api/presentation/pages/product_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final httpClient = CustomHttpClient();
    final productDataSource = ProductDatasource(httpClient);
    final productRepository = ProductRepositoryImpl(productDataSource);
    final getProductUsecase =GetProductUsecase(productRepository);

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>ProductController(getProductUsecase))
      ],
      child: MaterialApp(
        title: 'Consumo de API Flutter',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const ProductPage(),
      ),
    );
  }
}
