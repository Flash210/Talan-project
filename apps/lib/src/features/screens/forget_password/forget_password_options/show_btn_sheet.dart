


import 'package:flutter/material.dart';

import '../../../../contants/sizes.dart';
import '../../../../contants/text_strings.dart';
import 'forget_pass_widget.dart';

class ShowBtnSheet{
  
  static Future<dynamic> showBottomSheet(BuildContext context) {
    return showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    builder: (context) => Container(
                          padding: const EdgeInsets.all(tDefautSize),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tForgetPassWordTitle,
                                  style:
                                      Theme.of(context).textTheme.headline2),
                              Text(tForgetMailSubTitle,
                                  style:
                                      Theme.of(context).textTheme.bodyText2),
                              const SizedBox(height: 30.0),


                              // ************** reset via  mail ************** 


                              ForgetPasswordBtnWidget(
                                title: tEmail,
                                btnIcon: Icons.mail_outline_rounded,
                                subTitle: tResetViaMail,
                                onTap: (){},
                              ),

                                // *****************   reset via password 
                              ForgetPasswordBtnWidget(
                                title: tPhone,
                                 subTitle:tResetViaPhone,
                                  btnIcon: Icons.mobile_friendly_rounded,
                                   onTap: (){})
                            ],
                          ),
                        ));
  }
}

