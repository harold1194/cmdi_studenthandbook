// ignore_for_file: prefer_const_constructors

import 'package:cmdi_student_handbook/widgets/book_drawer.dart';
import 'package:cmdi_student_handbook/widgets/custom_appbar.dart';
import 'package:cmdi_student_handbook/widgets/single_card.dart';
import 'package:flutter/material.dart';

class StudentAffairsScreen extends StatefulWidget {
  const StudentAffairsScreen({Key? key}) : super(key: key);

  @override
  State<StudentAffairsScreen> createState() => _StudentAffairsScreenState();
}

class _StudentAffairsScreenState extends State<StudentAffairsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          CustomAppbar(title: 'Student Affairs', backgroundColor: Colors.green),
      drawer: BookDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          SingleCard(iconCode: 0xe2cd, iconTitle: 'Functions and Objectives'),
          SingleCard(
            iconCode: 0xeb7d,
            iconTitle: 'Student Development Services',
          ),
          SingleCard(iconCode: 0xe41b, iconTitle: 'Student Welfare Services'),
          SingleCard(
              iconCode: 0xe167,
              iconTitle: 'Institutional Programs and Services'),
          SingleCard(iconCode: 0xe15b, iconTitle: 'Other Guidelines'),
        ],
      ),
    );
  }
}
