import 'package:dragonscreen/login/widgets/choose_divider.dart';
import 'package:dragonscreen/login/widgets/footer_text.dart';
import 'package:dragonscreen/login/widgets/login_form.dart';
import 'package:dragonscreen/login/widgets/login_header.dart';
import 'package:dragonscreen/login/widgets/sign_in_buttons.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: viewportConstraints.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 28.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              HeaderLogin(),
                              LoginForm(formKey: _formKey),
                              SignInDivider(),
                              SignInButton(
                                imageIcon: 'assets/fb.png',
                                titleButton: 'Sign in with Facebook',
                                heightIcon: 24.0,
                                widthIcon: 24.0,
                              ),
                              SignInButton(
                                imageIcon: 'assets/google.JPG',
                                titleButton: 'Sign in with Google',
                                heightIcon: 32.0,
                                widthIcon: 32.0,
                              ),
                              Footertext(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
