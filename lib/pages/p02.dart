import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class P02 extends StatelessWidget {
  const P02({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
              child: CircularPercentIndicator(
            radius: 100,
            lineWidth: 30,
            progressColor: Color.fromARGB(255, 42, 4, 111),
            percent: 0.7,
            backgroundColor: Color.fromARGB(255, 93, 132, 182),
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(
              "60%",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            animation: true,
            animationDuration: 1000,
          )),
        ],
      ),
    );
  }
}
