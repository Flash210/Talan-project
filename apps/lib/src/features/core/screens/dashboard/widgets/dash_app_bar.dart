import 'package:apps/src/features/core/screens/dashboard/widgets/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../contants/colors.dart';
import '../../../../../contants/images_strings.dart';
import '../../../../../contants/text_strings.dart';
import '../../../../../repository/auth_repo/auth_repo.dart';

class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashBoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu, color: Colors.black),
      title: Text(TAppName, style: Theme.of(context).textTheme.headline4),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: tCardBgColor),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.intance.logout();
            //   Get.to( const ProfileScreen());

            },
            icon: const Image(image: AssetImage(tUserProfileImg)),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
