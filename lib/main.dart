import 'package:flutter/material.dart';
import 'package:my_profile_app/screen/discover.dart';

import 'screen/profile_info.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
              display1: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              display2: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              title: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              subtitle: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
      ),
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Column(
            children: [
              ProfileInfo(),
              Discover(),
            ],
          ),
        ),
      ),
    );
  }
}
