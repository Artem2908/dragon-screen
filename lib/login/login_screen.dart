import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              //decoration: BoxDecoration(color: Colors.yellow),
              height: 200.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset('assets/snake_case.JPG'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Welcome ',
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'you to my world',
                        style: TextStyle(
                          fontSize: 20.0,
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
                  TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Email can\`t be empty';
                      }
                    },
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
                      onPressed: () {},
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
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
                    ),
                  ),
                  Container(
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
                            child: Image.asset('assets/fb.png', height: 24.0, width: 24.0),
                          ),
                          Text('Sign in with Facebook'),
                        ],
                      ),
                    ),
                  ),
                  Container(
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
                            child: Image.asset('assets/google.JPG', height: 32.0, width: 32.0),
                          ),
                          Text('Sign in with Google'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Not yet have an account? ',
                          style: TextStyle(fontSize: 17.0),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
