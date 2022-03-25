import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/cubits.dart';
import '../pages.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: LoginPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Log in to JuClub',
            style: headTitle1(color: Colors.black),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 60.0),
            child: LoginForm(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: bodyText1(color: Colors.black),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Sign up',
                  style: bodyText2(color: Colors.red),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
