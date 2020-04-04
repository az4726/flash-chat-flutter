import 'package:flash_chat/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'Logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                ColorizeAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                  colors: [
                    Colors.yellow,
                    Colors.orange,
                    Colors.deepOrange,
                    Colors.deepOrange[800],
                    Colors.grey[800],
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Hero(
              tag: 'Login',
              child: RoundedButton(Colors.lightBlueAccent, () {
                Navigator.pushNamed(context, 'login_screen');
              }, 'Log In'),
            ),
            Hero(
              tag: 'Register',
              child: RoundedButton(Colors.blueAccent, () {
                Navigator.pushNamed(context, 'register_screen');
              }, 'Register'),
            ),
          ],
        ),
      ),
    );
  }
}
