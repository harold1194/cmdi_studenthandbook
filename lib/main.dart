import 'package:cmdi_student_handbook/provider/theme_modal.dart';
import 'package:cmdi_student_handbook/screens/flash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModal(),
      child: Consumer(builder: (context, ThemeModal themeModal, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'CMDI E-Handbook',
          theme: themeModal.isDark ? ThemeData.dark() : ThemeData.light(),
          home: const Flashscreen(),
        );
      }),
    );
  }
}
