import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:simple_todo/pages/p01.dart';
import 'package:simple_todo/pages/p02.dart';
import 'package:simple_todo/pages/p03.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({super.key});

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  //Routing
  //Index ~ i
  int i = 0;
  //List of widgets i.e. p01, p02, p03
  static const List<Widget> _listOfPages = <Widget>[P01(), P02(), P03()];

  //Scaffold
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        title: const Text("Simple To-Do App"),
      ),
      //Body
      body: _listOfPages.elementAt(i),
      //Bottom Navigation Bar
      bottomNavigationBar: GNav(
        tabs: const [
          GButton(
            icon: Icons.task_alt,
            text: 'Home',
          ),
          GButton(
            icon: Icons.home,
            text: 'Profile',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
        onTabChange: (index) {
          setState(() {
            i = index;
          });
        },
      ),
    );
  }
}
