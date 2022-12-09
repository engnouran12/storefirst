import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Api.dart';
import '../model/get product.dart';

class CategoriesService {
  Future<List<Productmodel>> getCategoriesProducts(
      {required String categoryname}) async {
    List<dynamic> data = await Apiservece()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryname');
    List<Productmodel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(Productmodel.fromjson(data[i]));
    }
    return productlist;
  }
}
