import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;

  const LoginForm({Key key, this.formKey}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
          validator: (input) {
            if (input.isEmpty) {
              return 'Email can\`t be empty';
            }
          },
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(labelText: 'Email your email here'),
        ),
        TextFormField(
          validator: (input) {
            if (input.length < 6) {
              return 'Password length < 6';
            }
          },
          decoration: InputDecoration(labelText: 'Enter your password here'),
          obscureText: true,
        ),
        Container(
          padding: EdgeInsets.only(top: 30.0),
          width: MediaQuery.of(context).size.width,
          height: 70.0,
          child: RaisedButton(
            color: Colors.black54,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            onPressed: () {
              widget.formKey.currentState.validate();
            },
            child: Text(
              'SIGN IN',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: InkWell(
            onTap: () {},
            child: Text(
              'Forgot your password?',
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
