
import 'package:apps/src/contants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../../contants/images_strings.dart';
import '../../../../../../contants/text_strings.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(), 
            icon: Icon(LineAwesomeIcons.angle_left)
            ),
        title: Text(tProfile, style: Theme.of(context).textTheme.headline4),
        
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
                                        child: const Icon(LineAwesomeIcons.camera,
                                            size: 18.0, color: Colors.grey),
                                      ),
                          )
                ],
              ),

              const SizedBox(
                height: 53,
              ),

              Form(child: Column(
                children: [
                    TextFormField(
                //  controller: controller.fullName,
                  decoration: const InputDecoration(
                      label: Text(tFullName),
                      prefixIcon: Icon(Icons.person_outline_rounded))),
              const SizedBox(height: tFormHeight - 25),

              // *******    Mail  Name Text Field  ***********
              TextFormField(
              //  controller: controller.email,
                decoration: const InputDecoration(
                    label: Text(tEmail),
                    prefixIcon: Icon(Icons.email_outlined)),
              ),

              const SizedBox(height: tFormHeight - 25),
              // ***************** Phone Number  **************
              TextFormField(
                //controller: controller.phoneNo,
                decoration: const InputDecoration(
                  label: Text(tPhone),
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(height: tFormHeight - 25),

              // ************ Password ********

              TextFormField(
             //   controller: controller.password,
                decoration: const InputDecoration(
                  label: Text(tPassword),
                  prefixIcon: Icon(Icons.fingerprint),
                ),
              ),
                ],
              )
              )
            ],
          ),
        ),
      ),
      );
  }
}