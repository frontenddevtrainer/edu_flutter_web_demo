import 'package:edu_flutter_web_demo/widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          primarySwatch: Colors.amber,
          textTheme: const TextTheme(
              displayLarge: TextStyle(fontFamily: "SedgwickAve", fontSize: 36))
          // fontFamily: "SedgwickAve"

          ),
    );
  }
}
