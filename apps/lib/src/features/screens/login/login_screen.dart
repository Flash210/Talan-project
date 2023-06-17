import 'package:apps/src/contants/sizes.dart';
import 'package:flutter/material.dart';

import 'login_footer.dart';
import 'login_form.dart';
import 'login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefautSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ***********  header ****************
                LoginHeaderWidget(size: size),
                // ***********  Body Form  ****************

                const LoginForm(),

                // **************  Footer  *******************
              const   LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
