import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Api.dart';


class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    //https://fakestoreapi.com/products

    
    List<dynamic> data = await Apiservece()
        .get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
} 
//donot need model as body is list of data