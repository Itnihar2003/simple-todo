import 'package:flutter/material.dart';

class P01 extends StatefulWidget {
  const P01({super.key});

  @override
  State<P01> createState() => _P01State();
}

class _P01State extends State<P01> {
  int myint = 9;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('p01'),
    );
  }
}
