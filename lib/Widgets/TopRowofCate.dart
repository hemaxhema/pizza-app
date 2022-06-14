import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/ListofPizza.dart';
import 'package:pizza_app/ListofRowofMainPage.dart';
import 'package:pizza_app/main.dart';
import 'TheElementofListofRowofMainPage.dart';

String NowCateName = "reversed";

class TopRowofCate extends StatefulWidget {
  const TopRowofCate({
    Key? key,
  }) : super(key: key);

  @override
  State<TopRowofCate> createState() => _TopRowofCateState();
}

class _TopRowofCateState extends State<TopRowofCate> {
  String getNowCateName() {
    return NowCateName;
  }

  void changeNowCateName(String thisString) {
    setState(() {
      NowCateName = thisString;
      Test2 = sortBy
          .firstWhere((element) => NowCateName == element.thisName)
          .thisList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sortBy.length,
        itemBuilder: (context, i) {
          return ElementofRowofMainPage(
            thisString: sortBy[i].getName(),
            listen: getNowCateName(),
            write: changeNowCateName,
          );
        },
      ),
    );
  }
}
