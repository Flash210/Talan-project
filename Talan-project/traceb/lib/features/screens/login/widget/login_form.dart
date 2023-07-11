import 'package:flutter/material.dart';
import 'package:traceb/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return  Form(


     child: Container(
      padding: const EdgeInsets.symmetric(vertical:20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ************ Email **************
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: tEmail,
              hintText: tEmail,
              border: OutlineInputBorder()),
          ),

          // ***************  Password ********
          const SizedBox(height:30),

              TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.password_rounded),
              labelText: tPassword,
              hintText: tPassword,
              border: OutlineInputBorder()),
          ),



        ],
      ),
     ),

    );
  }
}