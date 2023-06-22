import 'package:apps/src/features/screens/forget_password/forget_password_options/show_btn_sheet.dart';
import 'package:flutter/material.dart';

import '../../../contants/sizes.dart';
import '../../../contants/text_strings.dart';
import '../forget_password/forget_password_options/forget_pass_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  *******************      Email          ***************
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: tEmail,
                hintText: tEmail,
                border: OutlineInputBorder()),
          ),

          //  *******************      Password           ***************
          const SizedBox(
            height: tFormHeight,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password_rounded),
                labelText: tPAssword,
                hintText: tPAssword,
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye_sharp))),
          ),

          //  *******************      Forget Password           ***************

          const SizedBox(height: tFormHeight - 20),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  ShowBtnSheet.showBottomSheet(context);
                },
                child: Text(tForgetPassword)),
          ),

          //  *******************      Login btn            ***************
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(tLogin.toUpperCase())),
          )
        ],
      ),
    ));
  }
}
