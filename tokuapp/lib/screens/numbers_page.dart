import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokuapp/components/item.dart';

import '../models/number.dart';

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
    // Number(
    //   image: 'assets/images/numbers/eight.png',
    //   enName: 'eight',
    //   jpName: 'hachi',
    // ),
    // Number(
    //   image: 'assets/images/numbers/number_nine.png',
    //   enName: 'nine',
    //   jpName: 'Kyu',
    // ),
    // Number(
    //   image: 'assets/images/numbers/number_ten.png',
    //   enName: 'ten',
    //   jpName: 'Ju',
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff49332a),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, num) {
          // print(num);
          return Item(
            number: numbers[num],
            color: Colors.orange,
          );
        },
      ),
    );
  }
}
 //  i replace colum with listview to unable scrolling
        // Item(number: numbers[0]),
        // Item(number: numbers[1]),
        // Item(number: numbers[2]),
        // Item(number: numbers[3]),
        // Item(number: numbers[4]),
        // Item(number: numbers[5]),
        // Item(number: numbers[6]),
        // Item(number: numbers[7]),
        // Item(number: numbers[8]),
        // Item(number: numbers[9]),

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> itemsList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemsList.add(Item(number: numbers[i]));
//   }
//   return itemsList;
// }
