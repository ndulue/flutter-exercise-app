import 'package:flutter/material.dart';
class BottomNav extends StatelessWidget {
  final String imgNav;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNav({
    Key key,
    this.imgNav,
    this.title,
    this.press,
    this.isActive = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(imgNav),
          Text(title, style: TextStyle(color: isActive ? Colors.pinkAccent : Colors.black ),)
        ],
      ),
    );
  }
}