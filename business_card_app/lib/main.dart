import 'package:flutter/material.dart';

void main() {
  runApp(BusniessCardApp());
}

class BusniessCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color(0xFF2B475E),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 112,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('images/tharwat.png'),
                ),
              ),
              Text(
                'Salah Swidan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  color: Color(0xFF6C8090),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                color: Color(0xFF6C8090),
                thickness: 2, // the weight of the line
                indent: 60, // take space =60 from the left side
                endIndent: 60, // take space =60 from the right side
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ),
                  title: Text(
                    '(+20) 1553798716',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 32,
                    color: Color(0xFF2B475E),
                  ),
                  title: Text(
                    'salahswidan909@gmail.com',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
              // make a line to speer between two widgets
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              //   child: Container(
              //       decoration: BoxDecoration(
              //         color: Colors.white,
              //         borderRadius:
              //             BorderRadius.circular(10), // to make a ciruve
              //       ),
              //       height: 65,
              //       child: Row(
              //         children: [
              //           Spacer(
              //             flex: 1,
              //           ),
              //           Icon(
              //             Icons.phone,
              //             size: 32,
              //             color: Color(0xFF2B475E),
              //           ),
              //           Spacer(
              //             //used to make a space between to widget
              //             flex:
              //                 1, // to make 100% between phone icone and number  // if i take 1 only it will take space to the end of the line
              //           ),
              //           Text(
              //             '(+20) 1553798716',
              //             style: TextStyle(fontSize: 24),
              //           ),
              //           Spacer(
              //             flex:
              //                 7, // to make 200% between number and the end of line
              //           ),
              //         ],
              //       )),
              // ),
              // Padding(
              //   padding: EdgeInsets.all(16),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(10), // to make a ciruve
              //     ),
              //     height: 65,
              //     child: Row(
              //       children: [
              //         Spacer(
              //           flex: 1,
              //         ),
              //         Icon(
              //           Icons.mail,
              //           size: 32,
              //           color: Color(0xFF2B475E),
              //         ),
              //         Spacer(
              //           //used to make a space between to widget
              //           flex:
              //               3, // to make 100% between phone icone and number  // if i take 1 only it will take space to the end of the line
              //         ),
              //         Text(
              //           'salahswidan909@gmail.com',
              //           style: TextStyle(fontSize: 24),
              //         ),
              //         Spacer(
              //           flex:
              //               1, // to make 200% between number and the end of line
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          )),
    );
  }
}
