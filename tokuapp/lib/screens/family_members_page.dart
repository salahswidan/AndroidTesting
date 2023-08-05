import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  
class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
      image: 'assets/images/numbers/number_one.png',
      enName: 'one',
      jpName: 'ichi',
      sound: 'number_one_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      enName: 'two',
      jpName: 'Ni',
      sound: 'number_two_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      enName: 'three',
      jpName: 'San',
      sound: 'number_three_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      enName: 'four',
      jpName: 'Shi',
      sound: 'number_four_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      enName: 'five',
      jpName: 'Go',
      sound: 'number_five_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      enName: 'six',
      jpName: 'Roku',
      sound: 'number_six_sound.mp3',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      enName: 'seven',
      jpName: 'Sebun',
      sound: 'number_seven_sound.mp3',
    ),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('family members'),
        backgroundColor: Color(0xff49332a),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          // print(num);
          return Item(
            number: numbers[num],
            color: Color(0xff558B37),
          );
        },
      ),
    );
  }
}
