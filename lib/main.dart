import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/ListofPizza.dart';
import 'package:pizza_app/ListofRowofMainPage.dart';
import 'package:pizza_app/Widgets/TopRowofCate.dart';
import 'Widgets/TheElementofListofRowofMainPage.dart';

// List<Widget> Test = [
//   Text("Find good 1"),
//   Text("Find good 2"),
//   Text("Find good 3"),
//   Text("Find good 4"),
//   Text("Find good 5"),
//   Text("Find good 6"),
//   Text("Find good 7"),
//   Text("Find good 8"),
//   Text("Find good 9"),
//   Text("Find good 10"),
// ];
List<Pizza> Test2 = [];

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeeeeee),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 30,
                    ),
                    Icon(
                      Icons.search,
                      size: 30,
                    )
                  ],
                ),
              ), // The APPBAR
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find good",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Food around you",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ), //The TEXT ON TOP
              TopRowofCate(),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      childAspectRatio: 0.8),
                  itemBuilder: (context, i) {
                    return Container(
                      child: Container(
                        color: Colors.white,
                        child: Stack(children: [
                          Center(
                            child: Column(
                              children: [
                                Container(
                                    child: Image.asset(
                                  Test2[i].thisImage,
                                  width:
                                      MediaQuery.of(context).size.width - 250,
                                  height:
                                      MediaQuery.of(context).size.width - 250,
                                  fit: BoxFit.fill,
                                )),
                                SizedBox(height: 10),
                                Text(
                                  Test2[i].thisName,
                                  style: TextStyle(
                                      color: Color(0xffc6c6c6), fontSize: 15),
                                ),
                                SizedBox(height: 5),

                                Text("\$${Test2[i].thisPrice}",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)) //
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  Test2[i].isFavourite = !Test2[i].isFavourite;
                                });
                                print(Test2[i].isFavourite);
                                print(ListofPizza.where(
                                    (element) => element.isFavourite == true));
                              },
                              icon: Test2[i].isFavourite
                                  ? Icon(
                                      Icons.favorite,
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    )),
                        ]),
                      ),
                    );
                  },
                  itemCount: Test2.length,
                ),
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      if (NowCateName == "favourited") {
                        Test2 = ListofPizza.where(
                            (element) => element.isFavourite == true).toList();
                      }
                    });
                  },
                  child: Text("button"))
            ],
          ),
        ),
      ), // appBar: AppBar(
      //   backgroundColor: Colors.white,
      // ),
    );
  }
}
