import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: LoginForm());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        authLoginButton(
          label: 'Use Phone / Email',
          iconName: FontAwesomeIcons.user,
          onPressed: () {
            
          },
        ),
        commonSpace(),
        authLoginButton(
          label: 'Login with Google',
          iconName: FontAwesomeIcons.google,
          onPressed: () {},
        ),
        commonSpace(),
        authLoginButton(
          label: 'Login with Facebook',
          iconName: FontAwesomeIcons.facebook,
          onPressed: () {},
        ),
        commonSpace(),
        authLoginButton(
          label: 'Login with Twitter',
          iconName: FontAwesomeIcons.twitter,
          onPressed: () {},
        ),
        commonSpace(),
        authLoginButton(
          label: 'Login with Apple',
          iconName: FontAwesomeIcons.apple,
          onPressed: () {},
        ),
      ],
    );
  }
}
