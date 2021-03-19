import 'package:baza_ui/core/base_model.dart';
import 'package:baza_ui/core/failure.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/models/product.dart';
import 'package:baza_ui/services/product_service.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';

class ProductViewModel extends BaseModel{
  ProductService _productService = Injector<ProductService>();
  // TODO: ProductList와 Product Detail을 관리하는 변수를 하나로 두는지 여부 파악
  List<Product> productList = [];
  
  Future<void> getProductList() async {
    // TODO: DateFormat 기능 분리 작업 필요
    String searchEndDate = DateFormat('yyyyMMddHHmmss').format(DateTime.now().toUtc().add(Duration(hours: 9)));
    
    Either<Failure, List<Product>> either = await _productService.getProductList(searchEndDate: searchEndDate, currentPage: 1);
    either.fold((failure) => setFailure(failure), (productList) => this.productList = productList);
  }
}