import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/components/category_item.dart';
import 'package:tokuapp/screens/family_members_page.dart';
import 'package:tokuapp/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfff4da),
      appBar: AppBar(
        backgroundColor: Color(0xff49332a),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Categorylanguge(
            text: 'Numbers',
            color: Color(0xFFEF9235),
            when_on_tap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
          ),
          Categorylanguge(
            text: 'FamilyMember',
            color: Color.fromARGB(255, 15, 105, 18),
            when_on_tap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMembersPage();
              }));
            },
          ),
          Categorylanguge(
            text: 'Colors',
            color: Color(0xFF864caf),
          ),
          Categorylanguge(
            text: 'Phrases',
            color: Color(0xFF51b0d5),
          ),
        ],
      ),
    );
  }
}
