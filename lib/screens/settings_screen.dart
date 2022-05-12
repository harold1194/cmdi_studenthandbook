// ignore_for_file: prefer_const_constructors

import 'package:cmdi_student_handbook/provider/theme_modal.dart';
import 'package:cmdi_student_handbook/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ThemeModal themeNotifier, child) {
      return Scaffold(
        appBar: CustomAppbar(
          backgroundColor: Colors.green,
          title: 'Setting Screen',
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SwitcherButton(
                value: themeNotifier.isDark ? false : true,
                onChange: (value) {
                  themeNotifier.isDark
                      ? themeNotifier.isDark = false
                      : themeNotifier.isDark = true;
                },
              ),
              Text(
                'Change Theme',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
      );
    });
  }
}
