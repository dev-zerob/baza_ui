import 'dart:convert';

import 'package:baza_ui/core/failure.dart';
import 'package:baza_ui/injector.dart';
import 'package:baza_ui/models/product.dart';
import 'package:baza_ui/module/http_module.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class ProductService {
  final HttpModule _http = Injector<HttpModule>();
  final int _defaultCntPerPage = 12;

  Future<Either<Failure, List<Product>>> getProductList({
    @required String searchEndDate,
    @required int currentPage,
    String searchText,
    int cntPerPage,
    String categorySeq1,
    Map<String, String> header,
  }) async {
    final Map<String, dynamic> param = {
      "searchEndDate": searchEndDate,
      "currentPage": currentPage,
      "cntPerPage": cntPerPage ?? _defaultCntPerPage,
      "searchText": categorySeq1,
    };

    try {
      final url = Uri.https('dev-oauth.baazaa.co.kr', '/shop/v1/product/list', param);
      final response = await _http.get(url);

      if(response.statusCode == 200) {
        // TODO: response 생성 필요
        // TODO: Api Code에 따른 분기 처리 필요
        // TODO: Failure 구조화 구상
        final List data = jsonDecode(response.body)['data']['productList'];
        List<Product> productList = [];
        data.forEach((item) => productList.add(Product.fromJSON(item)));
        return Right(productList);
      }
      return Left(Failure());
    } catch(e) {
      return Left(Failure());
    }
  }
}
