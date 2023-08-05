// import 'package:flutter/material.dart';

// void main() {
//   // any thing in flutter is weidget by default print in top_left
//   //Text text = Text('hello world');
//   // hot reload  with build fun used to implemtace fast
//   runApp(HelloWorldApp());
// }

// // custome weidget

// // stls
// class HelloWorldApp extends StatelessWidget {
//   HelloWorldApp(); // constractor

//   @override
//   Widget build(BuildContext context) // the return type is widget
//   {
//     return MaterialApp(
//       //home: text,
//       //home: Text('hello world'),
//       home: Scaffold

//           /// Scaffold used to make 3 main part in the screen (appbar - bottom appbrar - floating action buttom)
//           (
//         appBar: AppBar(
//           title: Text('my first app'),
//         ),
//         floatingActionButton: FloatingActionButton(onPressed: () {}),
//         //body:Colum{
//         body: Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             // Center // center used to print center of screen not top_left by default
//             Container(
//               width: 100,
//               height: 80,
//               color: Colors.blue,
//               child: Center(child: Text('hello world salah swidan')),
//             ), // i used from center i  used child
//             Container(
//               width: 100,
//               height: 60,
//               color: const Color.fromARGB(255, 243, 33, 243),
//               child: Center(child: Text('hello world salah swidan')),
//             ), // i used from center i  used child
//             Container(
//               width: 100,
//               height: 60,
//               color: Color.fromARGB(255, 25, 196, 48),
//               child: Center(child: Text('hello world salah swidan')),
//             ), // i used from center i  used child
//           ],
//         ),
//       ),
//     ); // runApp used to run my app i put app in it // materia app used as basis to my app (black screen)
//   }
// }
