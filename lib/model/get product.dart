import 'package:flutter/material.dart';
//import "package:flutter/json";

class Productmodel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String Image;
  final Ratingmodel rating;
  Productmodel({
    required this.Image,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.rating, 
  });
//access req data that not null getting from api (json file)
  factory Productmodel.fromjson(jsonData) {
    
    return Productmodel(
        Image: jsonData['Image'],
        id: jsonData['id'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        rating: Ratingmodel.fromjson(jsonData['rating'],)//object of rating
        );
  }

  get category => null;
  
}

class Ratingmodel {
  final double rate;
  final int count;
  Ratingmodel({required this.count, required this.rate});
  factory Ratingmodel.fromjson(jsonData) {
    return Ratingmodel(count: jsonData['count'], rate: jsonData['rate']);
  }
}
