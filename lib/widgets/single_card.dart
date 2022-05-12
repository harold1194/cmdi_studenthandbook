// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SingleCard extends StatelessWidget {
  final int iconCode;
  final String iconTitle;
  const SingleCard({
    Key? key,
    required this.iconCode,
    required this.iconTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              IconData(
                iconCode,
                fontFamily: 'MaterialIcons',
              ),
              color: Colors.green,
              size: 85,
            ),
            Text(
              iconTitle,
              // style: TextStyle(
              //   color: Colors.black,
              //   fontSize: 15,
              //   fontWeight: FontWeight.bold,
              // ),
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
