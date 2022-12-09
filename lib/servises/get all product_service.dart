import 'dart:convert';

import '../Api.dart';
import '../model/get product.dart';
import 'package:http/http.dart' as http;

class AllproductService {
  Future<List<Productmodel>> getAllproduct() async {
   List<dynamic> data =await
     Apiservece().get(url: 'https://fakestoreapi.com/products');
    
    
    List<Productmodel> productlist = [];
    for (int i = 0; i < data.length; i++) {
      productlist.add(Productmodel.fromjson(data[i]));
    }
    return productlist;
  }
}
//steps
//1)resoonse body json
//2)decode data
//3)loop data and add data to model list i do