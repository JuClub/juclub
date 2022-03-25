import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/cubits.dart';
import 'email_password_form.dart';

class EmailPasswordPage extends StatelessWidget {
  const EmailPasswordPage({ Key? key }) : super(key: key);
  static Page page() => const MaterialPage<void>(child: EmailPasswordPage());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            return const EmailPasswordForm();
          },
        ),
      ),
    );
  }
}