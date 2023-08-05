import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCard());
}

class BirthdayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color(0xFFd2bcd5), // i add 0xFF before color number
      body: Center(
        child: Image(
          image: AssetImage('images/photo_for_project.png'),
        ),
      ),
    ));
  }
}
