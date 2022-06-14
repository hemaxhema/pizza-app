import 'package:flutter/cupertino.dart';

class Pizza {
  String thisImage;
  String thisName;
  double thisPrice;
  bool isFavourite = false;

  Pizza(
      {required this.thisName,
      required this.thisImage,
      required this.thisPrice,
      this.isFavourite = false});
}

List<Pizza> ListofPizza = [
  Pizza(thisName: "first", thisImage: "assets/images/1.jpg", thisPrice: 1.99),
  Pizza(thisName: "second", thisImage: "assets/images/2.jpg", thisPrice: 2.99),
  Pizza(
      thisName: "third",
      thisImage: "assets/images/3.jpg",
      thisPrice: 3.99,
      isFavourite: true),
  Pizza(thisName: "forth", thisImage: "assets/images/4.jpg", thisPrice: 4.99),
  Pizza(thisName: "fifth", thisImage: "assets/images/5.jpg", thisPrice: 5.99),
  Pizza(thisName: "sixth", thisImage: "assets/images/6.jpg", thisPrice: 6.99),
  Pizza(thisName: "seventh", thisImage: "assets/images/7.jpg", thisPrice: 7.99),
  Pizza(thisName: "eighth", thisImage: "assets/images/8.jpg", thisPrice: 8.99),
  Pizza(thisName: "ninth", thisImage: "assets/images/9.jpg", thisPrice: 9.99),
];
