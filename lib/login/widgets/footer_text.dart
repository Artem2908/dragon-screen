import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class Footertext extends StatefulWidget {
  @override
  _FootertextState createState() => _FootertextState();
}

class _FootertextState extends State<Footertext> {
  TapGestureRecognizer gestureRecognizer = TapGestureRecognizer();

  @override
  void initState() {
    super.initState();
    gestureRecognizer.onTap = () {
      print('Sign Up');
    };
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
        child: Center(
          child: RichText(
            text: TextSpan(
              text: 'Not have an account yet? ',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: gestureRecognizer,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    gestureRecognizer.dispose();
    super.dispose();
  }
}
