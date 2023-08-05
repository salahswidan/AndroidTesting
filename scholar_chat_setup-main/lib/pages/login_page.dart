import 'package:flutter/material.dart';
import 'package:scholar_chat/constants.dart';
import 'package:scholar_chat/pages/register_screen.dart';
import 'package:scholar_chat/widgets/custom_botton.dart';
import 'package:scholar_chat/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                  'LOGIN ',
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
              text: 'LOGIN',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'dont\'t have an account ? ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterPage.id);
                  },
                  child: Text(
                    '       Register',
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
