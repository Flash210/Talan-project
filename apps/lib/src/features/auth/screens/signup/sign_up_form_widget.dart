import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../contants/sizes.dart';
import '../../../../contants/text_strings.dart';

class SignUpFormWIdget extends StatelessWidget {
  const SignUpFormWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                         // const SizedBox(height: tFormHeight - 20),

          // *******    Full Name Text Field  ***********
          TextFormField(
              decoration: const InputDecoration(
                  label: Text(tFullName),
                  prefixIcon: Icon(Icons.person_outline_rounded))),
      const SizedBox(height: tFormHeight - 25),

          // *******    Mail  Name Text Field  ***********
          TextFormField(
            decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined)),
          ),

      const SizedBox(height: tFormHeight - 25),
           // ***************** Phone Number  **************
           TextFormField(
            decoration: const InputDecoration(
              label: Text(tPhone),
              prefixIcon: Icon(Icons.numbers),
            ),
           ),
      const SizedBox(height: tFormHeight - 25),

           // ************ Password ******** 

           TextFormField(
            decoration: const InputDecoration(
              label: Text(tPassword),
              prefixIcon: Icon(Icons.fingerprint),
            ),
           ),
                           const SizedBox(height: tFormHeight - 26),
                           SizedBox(
                            width: double.infinity,
                             child: ElevatedButton(
                              onPressed: (){},
                               child: const Text(tSignUp)),
                           )

        ],
      )),
    );
  }
}
