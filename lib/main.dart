import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(Registration_form());
}

class Registration_form extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Form',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const HomeScreen(),
    );
  }
}
