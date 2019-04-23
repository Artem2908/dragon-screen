import 'package:flutter/material.dart';

class SignInButton extends StatefulWidget {
  final String imageIcon;
  final String titleButton;
  final double heightIcon;
  final double widthIcon;

  const SignInButton({this.imageIcon, this.titleButton, this.heightIcon, this.widthIcon});

  @override
  _SignInButtonState createState() => _SignInButtonState();
}

class _SignInButtonState extends State<SignInButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      width: MediaQuery.of(context).size.width,
      height: 55.0,
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(color: Colors.black, width: 1.0, style: BorderStyle.solid),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset('${widget.imageIcon}', height: widget.heightIcon, width: widget.widthIcon),
            ),
            Text('${widget.titleButton}'),
          ],
        ),
      ),
    );
  }
}
