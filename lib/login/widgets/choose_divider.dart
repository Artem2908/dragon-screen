import 'package:flutter/material.dart';

class SignInDivider extends StatefulWidget {
  @override
  _SignInDividerState createState() => _SignInDividerState();
}

class _SignInDividerState extends State<SignInDivider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Or',
            style: TextStyle(color: Colors.black54),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
