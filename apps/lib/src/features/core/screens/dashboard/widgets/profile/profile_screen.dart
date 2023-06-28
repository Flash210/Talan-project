import 'package:apps/src/contants/colors.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:apps/src/features/core/screens/dashboard/widgets/profile/update_profile_screen.dart';
import 'package:apps/src/features/core/screens/dashboard/widgets/profile/widget/profile_menu_widget.dart';
import 'package:apps/src/features/core/screens/dashboard/widgets/profile_menu_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
        var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;



    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: Icon(LineAwesomeIcons.angle_left)),
        title: Text(tProfile, style: Theme.of(context).textTheme.headline4),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefautSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                      width: 120,
                      height: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: const Image(image: AssetImage(tUserProfileImg)))
                          ),

                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.grey.withOpacity(0.1),
                                        ),
                                        child: const Icon(LineAwesomeIcons.alternate_pencil,
                                            size: 18.0, color: Colors.grey),
                                      ),
                          )
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Text(tProfileHeading,
                  style: Theme.of(context).textTheme.headline4),
              Text(tProfileSubHeading,
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: 20),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() =>  UpdateProfile()),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: tPrimaryColor,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text(
                      tEditProfile,
                      style: TextStyle(color: tDarkColor),
                    ),
                  )),

              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              // Menu

              ProfileMenuWidget(
                title: "Settigns ",
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              //**************  */
              ProfileMenuWidget(
                title: "Billings Details ",
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
//********************* */

              ProfileMenuWidget(
                title: "Settigns ",
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),

              ProfileMenuWidget(
                title: "User managment ",
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ),



           /*   ListView.builder(
                itemCount: ProfileMenuData.getMenuWidget().length,
                itemBuilder: (context, index) {
                  return ProfileMenuData.getMenuWidget()[index];
                },
              ),*/

              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              //************ */
              ProfileMenuWidget(
                title: "Information ",
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),

              //**************

              ProfileMenuWidget(
                title: "Log Out  ",
                icon: LineAwesomeIcons.alternate_sign_out,
                endIcon: false,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}



