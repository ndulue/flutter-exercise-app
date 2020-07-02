import 'package:flutter/material.dart';
import 'package:flutterexerciseapp/widget/SearchBox.dart';
import 'package:flutterexerciseapp/widget/bottom_nav.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNav(
        title: "Today",
        imgNav: "assets/img7.jpg",
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
              image: DecorationImage(
                  image: AssetImage("assets/img8.jpg"),
                  fit: BoxFit.fitWidth
              ),
            ),
          ),
          SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          "Meditation",
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .copyWith(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "5-10 Minute Course",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.6,
                          child: Text(
                            "Live happier and healthier every day of your life"
                          ),
                        ),
                        SizedBox(
                            width: size.width * 0.55,
                            child: searchBox()
                        ),
                        Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children: <Widget>[
                            SessionCard(
                              session: "First",
                              isDone: true,
                              press: (){},
                            ),
                            SessionCard(
                              session: "Second",
                              press: (){},
                            ),
                            SessionCard(
                              session: "Third",
                              press: (){},
                            ),
                            SessionCard(
                              session: "Fourth",
                              press: (){},
                            ),
                            SessionCard(
                              session: "Fifth",
                              press: (){},
                            ),
                            SessionCard(
                              session: "Sixth",
                              press: (){},
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Meditation",
                          style: Theme.of(context)
                              .textTheme.title.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.all(10),
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: Colors.blueGrey
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                "assets/img9.jpg",
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Basic 8",
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle,
                                      ),
                                      Text("Start your deepen you pratice")
                                    ],
                                  )
                              ),
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset("assetName"),
                              )
                            ],
                          )
                        )
                      ],
                    ),
                  ),
              )
          )
        ],
      ),
    );
  }
}

class SessionCard extends StatelessWidget {
  final String session;
  final bool isDone;
  final Function press;
  const SessionCard({
    Key key,
    this.session,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraint.maxWidth / 2 - 10,
            // padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.blueGrey
                ),
              ]
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 42,
                        width: 43,
                        decoration: BoxDecoration(
                          color: isDone ? Colors.lightBlue : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.lightBlue
                          )
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: isDone ? Colors.white : Colors.lightBlue,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "$session Session",
                        style: Theme.of(context)
                            .textTheme.subtitle1,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
