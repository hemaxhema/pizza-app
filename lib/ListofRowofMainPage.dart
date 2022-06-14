import 'package:flutter/cupertino.dart';
import 'package:pizza_app/ListofPizza.dart';
import 'package:pizza_app/Widgets/TheElementofListofRowofMainPage.dart';
import 'package:pizza_app/main.dart';

import 'main.dart';

class ElementofSortby {
  String thisName;
  List<Pizza> thisList;

  ElementofSortby({required this.thisName, required this.thisList});

  getName() {
    return thisName;
  }

  getList() {
    return thisList;
  }
}

List<ElementofSortby> sortBy = [
  ElementofSortby(thisName: "normal", thisList: ListofPizza),
  ElementofSortby(
      thisName: "reversed", thisList: ListofPizza.reversed.toList()),
  ElementofSortby(
      thisName: "favourited",
      thisList:
      ListofPizza.where((element) => element.isFavourite == true).toList())
];
