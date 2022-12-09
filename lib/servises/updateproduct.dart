import '../Api.dart';
import '../model/get product.dart';

class Updateproductservice {
  Future<Productmodel> updateproduct(
      {required tittle,
      required price,
      required img,
      required des,
      required cate, required int id}) async {
    Map<String, dynamic> data = await Apiservece().put(
      url: 'https://fakestoreapi.com/products/:$id',
      body: {
        "title": '$tittle',
        "price": '$price',
        "description": '$des',
        "image": '$img',
        "category": '$cate'
      },
    );
    // return data;
    return Productmodel.fromjson(data);
  }
}
