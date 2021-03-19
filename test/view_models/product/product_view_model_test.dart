import 'package:baza_ui/injector.dart';
import 'package:baza_ui/models/product.dart';
import 'package:baza_ui/services/product_service.dart';
import 'package:baza_ui/view_models/product_view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';
import 'package:mockito/mockito.dart';

import '../../mocks/product_service_mock.dart';

void main() {
  // TODO: Code Refectoring 필요
  ProductViewModel productViewModel;
  ProductService productService;

  setUpAll(() async {
    await setUpInjector();
    Injector.allowReassignment = true;
    Injector.registerLazySingleton<ProductService>(() => MockProductService());
    productService = Injector<ProductService>();
    productViewModel = Injector<ProductViewModel>();
  });

  group('상품 목록 조회', () {
    test('Product View Model은 Product 객체를 가지고 있다.', () async {
      expect(productViewModel.productList.length, 0);
    });

    test('Product View Model은 getProductList()를 호출하면 Product 객체를 3개 가져온다.', () async {
      List<Product> tProductList = [
        Product(),
        Product(),
        Product(),
        Product(),
        Product(),
        Product(),
        Product(),
        Product(),
        Product(),
        Product(),
      ];

      String searchEndDate = DateFormat('yyyyMMddHHmmss').format(DateTime.now().toUtc().add(Duration(hours: 9)));
      when(productService.getProductList(searchEndDate: searchEndDate, currentPage: 1)).thenAnswer((_) async => Right(tProductList));

      await productViewModel.getProductList();
      // print(productViewModel.productList.length);
      expect(productViewModel.productList.length, 10);
    });
  });
}
