// ignore_for_file: prefer_const_constructors

import 'package:cmdi_student_handbook/widgets/book_drawer.dart';
import 'package:cmdi_student_handbook/widgets/custom_appbar.dart';
import 'package:cmdi_student_handbook/widgets/single_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Home', backgroundColor: Colors.green),
      drawer: BookDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          SingleCard(iconCode: 0xf012e, iconTitle: 'School Services'),
          SingleCard(iconCode: 0xf0f2, iconTitle: 'Safety & Security'),
          SingleCard(iconCode: 0xf04fa, iconTitle: 'Emergency & Evacuation'),
          SingleCard(iconCode: 0xf592, iconTitle: 'Attire on Campus'),
          SingleCard(iconCode: 0xe377, iconTitle: 'Library Services'),
        ],
      ),
    );
  }
}
