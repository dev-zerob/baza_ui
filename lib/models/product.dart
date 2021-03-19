import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Product extends Equatable {
  final String prdSeq;
  final String prdNm;

  Product({
    @required this.prdSeq,
    @required this.prdNm,
  });

  factory Product.fromJSON(Map post) {
    return Product(
      prdSeq: post['prdSeq'],
      prdNm: post['prdNm'],
    );
  }

  @override
  List<Object> get props => [prdSeq, prdNm];
}
