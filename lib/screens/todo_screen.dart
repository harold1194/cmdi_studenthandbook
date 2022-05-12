// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, avoid_print

import 'package:cmdi_student_handbook/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text("Add task"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              autofocus: true,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myCard(String task) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text("$task"),
          onLongPress: () {
            print("Should be deleted");
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      appBar: CustomAppbar(title: 'My Task', backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            myCard("Record a @dfaea"),
            myCard("Record a che@t l1st"),
            myCard("Record a asdf"),
            myCard("Record a osdfe"),
            myCard("Record a dfaea@"),
          ],
        ),
      ),
    );
  }
}
