import 'package:flutter/material.dart';

class HeaderLogin extends StatefulWidget {
  @override
  _HeaderLoginState createState() => _HeaderLoginState();
}

class _HeaderLoginState extends State<HeaderLogin> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          //decoration: BoxDecoration(color: Colors.yellow),
          height: 200.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Image.asset('assets/snake_case.JPG'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' you to my world',
                    style: TextStyle(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            'Please Sign in to continue',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.black45,
            ),
          ),
        ),
      ],
    );
  }
}
