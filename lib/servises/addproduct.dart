import 'package:storefirst/Api.dart';

import '../model/get product.dart';

class Addproduct {
  Future<Productmodel> addproduct({
    required price,
    required cate,
    required String image,
    required String desc,
    required String title,
  }) async {
    Map<String, dynamic> data = await Apiservece().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": '$title',
        "price": '$price',
        "description": '$desc',
        "image": '$image',
        "category": '$cate'
      },
    );
    // return data;
    return Productmodel.fromjson(data);
  }
}
