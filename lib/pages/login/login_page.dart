import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/cubits.dart';
import 'login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: LoginPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('login')),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return LoginForm(); 
              },
            )));
  }
}
