import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  // i change StatelessWidget to  StatefulWidget  to print the team point on the screen
  int TeamApoint = 0;

  int TeamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // to delete the red  line
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              //in Row the main axis is x axis
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // to give equalte space
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$TeamApoint',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              TeamApoint++;
                            }); // print teampoint in the screen
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamApoint += 2;
                          }); // print teampoint in the screen
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamApoint = TeamApoint + 3;
                          }); // print teampoint in the screen
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 3,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$TeamBpoint',
                        style: TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)),
                          onPressed: () {
                            setState(() {
                              TeamBpoint++;
                            }); // print teampoint in the screen
                          },
                          child: Text(
                            'Add 1 point',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          )),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            TeamBpoint = TeamBpoint + 2;
                          }); // print teampoint in the screen
                        },
                        child: Text(
                          'Add 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange, minimumSize: Size(150, 50)),
                        onPressed: () {
                          setState(() {
                            TeamBpoint = TeamBpoint + 3;
                          }); // print teampoint in the screen
                        },
                        child: Text(
                          'Add 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange, minimumSize: Size(150, 50)),
              onPressed: () {
                setState(() {
                  TeamApoint = 0;
                  TeamBpoint = 0;
                }); // print teampoint in the screen
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
