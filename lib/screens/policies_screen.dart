// ignore_for_file: prefer_const_constructors

import 'package:cmdi_student_handbook/widgets/book_drawer.dart';
import 'package:cmdi_student_handbook/widgets/custom_appbar.dart';
import 'package:cmdi_student_handbook/widgets/single_card.dart';
import 'package:flutter/material.dart';

class PoliciesScreen extends StatefulWidget {
  const PoliciesScreen({Key? key}) : super(key: key);

  @override
  State<PoliciesScreen> createState() => _PoliciesScreenState();
}

class _PoliciesScreenState extends State<PoliciesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Policies', backgroundColor: Colors.green),
      drawer: BookDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          SingleCard(iconCode: 0xe491, iconTitle: 'Student Classification'),
          SingleCard(iconCode: 0xe95a, iconTitle: 'Collage Enrollment'),
          SingleCard(iconCode: 0xe1f2, iconTitle: 'Registar Record'),
          SingleCard(iconCode: 0xe040, iconTitle: 'Tuition and other Charges'),
          SingleCard(iconCode: 0xf56a, iconTitle: 'Registration and Loads'),
          SingleCard(iconCode: 0xf02dd, iconTitle: 'Academic Loads'),
          SingleCard(iconCode: 0xe047, iconTitle: 'Adding and Dropping'),
          SingleCard(iconCode: 0xe677, iconTitle: 'Transfer of Credits'),
          SingleCard(iconCode: 0xef3f, iconTitle: 'Shifting to Other Courses'),
          SingleCard(iconCode: 0xe318, iconTitle: 'Rules on Residency'),
          SingleCard(iconCode: 0xf2b4, iconTitle: 'Petitioned Classes'),
          SingleCard(iconCode: 0xf02cb, iconTitle: 'Special Classes'),
          SingleCard(iconCode: 0xf587, iconTitle: 'Major Examination'),
          SingleCard(iconCode: 0xe2df, iconTitle: 'Grading System'),
          SingleCard(iconCode: 0xeebb, iconTitle: 'Attendance Policy'),
          SingleCard(iconCode: 0xe56f, iconTitle: 'General Provision'),
          SingleCard(iconCode: 0xe7a1, iconTitle: 'Diploma'),
          SingleCard(iconCode: 0xe0b7, iconTitle: 'Awards'),
          SingleCard(iconCode: 0xe0b8, iconTitle: 'Academic Excellence'),
          SingleCard(iconCode: 0xe559, iconTitle: 'Policy in Graduation'),
        ],
      ),
    );
  }
}
