import 'package:flutter/material.dart';
import 'package:pizza_app/main.dart';

class ElementofRowofMainPage extends StatefulWidget {
  String thisString;
  String listen;
  Function write;

  ElementofRowofMainPage(
      {Key? key,
      required this.thisString,
      required this.listen,
      required this.write})
      : super(key: key);

  @override
  State<ElementofRowofMainPage> createState() => _ElementofRowofMainPageState();
}

class _ElementofRowofMainPageState extends State<ElementofRowofMainPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          widget.write(widget.thisString);
        },
        child: Container(
          child: Text(
            widget.thisString,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          decoration: BoxDecoration(
            color: widget.listen == widget.thisString
                ? Color(0xffF5C254)
                : Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          margin: EdgeInsets.only(left: 7),
          padding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}
