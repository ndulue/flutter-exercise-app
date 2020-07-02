import 'package:flutter/material.dart';

class SessionCard extends StatelessWidget {
  const SessionCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
      child: Row(
        children: <Widget>[
          Container(
            height: 42,
            width: 43,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                shape: BoxShape.circle
            ),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          Text(
            "First Session",
            style: Theme.of(context)
                .textTheme.subtitle1,
          )
        ],
      ),
    );
  }
}