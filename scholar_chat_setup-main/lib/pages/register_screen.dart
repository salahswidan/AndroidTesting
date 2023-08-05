import 'dart:html';

import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/custom_botton.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({Key? key}) : super(key: key);

  static String id = 'registerPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Spacer(
              flex: 1,
            ),
            Image.asset('assets/images/scholar.png'),
            Text(
              'Scholar Chat ',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Text(
                  'REGISTER ',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Email',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(
              hintText: 'Password',
            ),
            SizedBox(
              height: 15,
            ),
            CustomButton(
              text: 'REGISTER',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account ?',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    '       login ',
                    style: TextStyle(
                      color: Color(0xffC7EDE6),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
