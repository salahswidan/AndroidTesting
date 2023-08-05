import 'package:flutter/material.dart';

class Categorylanguge extends StatelessWidget {
  Categorylanguge({this.text, this.color, this.when_on_tap});
  String? text;
  Color? color; // note the data type is color
  Function()? when_on_tap; // OR i can write VoidCallback?  when_on_tap
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //i used GestureDetector to naviget beteen page
      onTap: when_on_tap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft, // to put it in the center Of left
        height: 65,
        width: double.infinity, // mean take all the access places
        color: color!, // pass to it the color
        child: Text(
          text!, // pass to it the text
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
