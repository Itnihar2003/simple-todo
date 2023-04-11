import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BaseScaffold extends StatefulWidget {
  const BaseScaffold({super.key});

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppBar(
        title: const Text("Simple To-Do App"),
      ),
      //Body
      body: const Center(
        child: Text('P01'),
      ),
      //Bottom Navigation Bar
      bottomNavigationBar: const GNav(
        tabs: [
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
      ),
    );
  }
}
