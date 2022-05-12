// ignore_for_file: prefer_const_constructors

import 'package:cmdi_student_handbook/screens/settings_screen.dart';
import 'package:cmdi_student_handbook/screens/todo_screen.dart';
import 'package:flutter/material.dart';

class BookDrawer extends StatelessWidget {
  const BookDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(context),
          _buildPortfolioItem(context),
          _buildHistory(context),
          _buildCoreValues(context),
          _buildCMDIMottoAndLogo(context),
          _buildCardMriHymm(context),
          _buildCmdiMap(context),
          //_buildDivider(context),
          _buildTodo(context),
          _buildContactUs(context),
          _buildAboutUs(context),
          _buildSettings(context),
          _buildLogOut(context),
        ],
      ),
    );
  }

  UserAccountsDrawerHeader _buildDrawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'CARD-MRI Devolpment Institute, Inc.',
      ),
      accountEmail: Text(
        'Student Handbook 2021-2022',
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            // image: NetworkImage(
            //   'https://cmdi.edu.ph/wp-content/uploads/2021/04/BACCALAUREATE-PROGRAMS-LOW-RES-300x239.jpg',
            // ),
            image: NetworkImage(
                'https://tcg.uis.unesco.org/wp-content/uploads/sites/4/2021/07/politics_schoolreopening.jpg')),
      ),
    );
  }

  ListTile _buildPortfolioItem(BuildContext context) {
    return ListTile(
      title: Text(
        'Home',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.home,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildHistory(BuildContext context) {
    return ListTile(
      title: Text(
        'History',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.history_edu,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildCoreValues(BuildContext context) {
    return ListTile(
      title: Text(
        'Core Values',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.accessibility_new_sharp,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildCMDIMottoAndLogo(BuildContext context) {
    return ListTile(
      title: Text(
        'CMDI Motto and Logo',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.history_edu,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildCardMriHymm(BuildContext context) {
    return ListTile(
      title: Text(
        'CARD-MRI Hymm',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.list_alt_sharp,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildCmdiMap(BuildContext context) {
    return ListTile(
      title: Text(
        'CMDI Map',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.map_outlined,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  // Divider _buildDivider(BuildContext context) {
  //   return Divider(
  //     color: Colors.grey,
  //   );
  // }

  ListTile _buildTodo(BuildContext context) {
    return ListTile(
      title: Text(
        'Todo',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.padding,
        color: Colors.greenAccent,
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TodoScreen()));
      },
    );
  }

  ListTile _buildContactUs(BuildContext context) {
    return ListTile(
      title: Text(
        'Contact Us',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.phone,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildAboutUs(BuildContext context) {
    return ListTile(
      title: Text(
        'About Us',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.person_sharp,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }

  ListTile _buildSettings(BuildContext context) {
    return ListTile(
      title: Text(
        'Settings',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.settings,
        color: Colors.greenAccent,
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SettingsScreen(),
          ),
        );
      },
    );
  }

  ListTile _buildLogOut(BuildContext context) {
    return ListTile(
      title: Text(
        'Log Out',
        style: Theme.of(context).textTheme.subtitle1,
      ),
      leading: Icon(
        Icons.logout,
        color: Colors.greenAccent,
      ),
      onTap: () {},
    );
  }
}
