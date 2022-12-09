import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Apiservece {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("there is error ${response.statusCode}");
    }
  }

  Future<dynamic> post({
    required String url,
    @required body,
    @required String? token,
  }) async {
    Map<String, String> headers = {};
    //'https://fakestoreapi.com/products'
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer &token'});
    }
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: {
      //application/atom+xml
      'Content-Type': 'application/x-www-form-urlencoded'
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception("there is error ${response.statusCode}");
    }
  }

  Future<dynamic> put({
    required String url,
    @required body,
    @required String? token,
    @required id,
  }) async {
    Map<String, String> headers = {};

    //'https://fakestoreapi.com/products'
    if (token != null) {
      headers.addAll({'Authorization': 'Bearer &token'});
    }
    print('url=$url,body=$body,token=$token');
    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: {
      //application/atom+xml
      'Content-Type': 'application/x-www-form-urlencoded'
    });
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      print(data);
      return data;
    } else {
      throw Exception("there is error ${response.statusCode}");
    }
  }
}
