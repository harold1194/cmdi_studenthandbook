// ignore_for_file: prefer_const_constructors

import 'package:cmdi_student_handbook/widgets/book_drawer.dart';
import 'package:cmdi_student_handbook/widgets/custom_appbar.dart';
import 'package:cmdi_student_handbook/widgets/single_card.dart';
import 'package:flutter/material.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  State<RulesScreen> createState() => _RulesScreenState();
}

class _RulesScreenState extends State<RulesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
          title: 'Rules & Regulation', backgroundColor: Colors.green),
      drawer: BookDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          SingleCard(
              iconCode: 0xe835,
              iconTitle: 'Classroom Rights and Responsibility'),
          SingleCard(iconCode: 0xe23a, iconTitle: 'Code of Conduct'),
          SingleCard(
              iconCode: 0xe1af,
              iconTitle: 'Types of Offenses and Disiplinary Actions'),
        ],
      ),
    );
  }
}
