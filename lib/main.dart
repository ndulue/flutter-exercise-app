import 'package:flutter/material.dart';
import 'package:flutterexerciseapp/screens/details.dart';
import 'package:flutterexerciseapp/widget/SearchBox.dart';
import 'package:flutterexerciseapp/widget/bottom_nav.dart';
import 'package:flutterexerciseapp/widget/category_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exercise App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            BottomNav(
              title: "Today",
              imgNav: "assets/img7.jpg",
            ),
            BottomNav(
              title: "All Exercise",
              imgNav: "assets/img7.jpg",
              isActive: true,
            ),
            BottomNav(
              title: "Today",
              imgNav: "assets/img7.jpg",
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.4,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8)
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: Color(0xFFF2BEA1),
                            shape: BoxShape.circle),
                        child: Image.asset("assets/img1.jpg"),
                      ),
                    ),
                    Text(
                      "Good Day Emeka",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    searchBox(),
                    Expanded(
                      child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: .8,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          children: <Widget>[
                            ItemContainer(
                              img: "assets/img3",
                              title: "Monthly Recommendation",
                              press: (){},
                            ),
                            ItemContainer(
                              img: "assets/img4",
                              title: "Weekly Recommendation",
                              press: (){},
                            ),
                            ItemContainer(
                              img: "assets/img5",
                              title: "Daily Recommendation",
                              press: (){Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context){
                                    return Details();
                                  }),
                                );
                              },
                            ),
                            ItemContainer(
                              img: "assets/img6",
                              title: "Yearly Recommendation",
                              press: (){},
                            ),
                          ],
                      ),
                    )
                  ],
                ),
              ) 
          )
        ],
      ),
    );
  }
}






