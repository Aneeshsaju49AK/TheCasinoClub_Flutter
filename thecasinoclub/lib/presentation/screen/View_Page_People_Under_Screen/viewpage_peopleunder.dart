import 'package:flutter/material.dart';
import 'package:thecasinoclub/presentation/screen/Add_screen/add_user.dart';
import 'package:thecasinoclub/presentation/screen/Authentication_Screen/widgets/user_info_authentication.dart';
import 'package:thecasinoclub/presentation/screen/Login_Screen/login_screen.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/custom_circle_button_common.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/custom_page_heading.dart';

class ViewpagePeopleunder extends StatelessWidget {
  const ViewpagePeopleunder({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageHeadingCommon(
              width: width,
              height: height,
              textValue: 'list of user',
            ),
            Column(
              children: [
                SizedBox(
                  width: width / 1,
                  height: height / 1.2,
                  child: ValueListenableBuilder(
                    valueListenable: adduserlist,
                    builder: (context, value, _) {
                      
                      if (value.isEmpty) {
                        return Container(
                          child: Center(
                            child: Text("No Requests"),
                          ),
                        );
                      } else {
                        return ListView.builder(
                          itemCount: value.length,
                          itemBuilder: (context, index) {
                            final user = value[index];
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                              width: width / 1.5,
                              height: height / 1.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 214, 203, 162),
                              ),
                              child: Column(
                                children: [
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "Id :",
                                    inputTwo: "nil",
                                  ),
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "UserName :",
                                    inputTwo: value.isEmpty
                                        ? ''
                                        : user['username'] ?? 'waiting',
                                  ),
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "Password :",
                                    inputTwo: value.isEmpty
                                        ? ''
                                        : user['password'] ?? 'waiting',
                                  ),
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "TranscationPassword :",
                                    inputTwo: value.isEmpty
                                        ? ''
                                        : user['transactionpass'] ??
                                            'waiting',
                                  ),
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "Name :",
                                    inputTwo: value.isEmpty
                                        ? ''
                                        : user['name'] ?? 'waiting',
                                  ),
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "Email :",
                                    inputTwo: value.isEmpty
                                        ? ''
                                        : user['email'] ?? 'waiting',
                                  ),
                                  UserInfoInAuthentication(
                                    width: width,
                                    height: height,
                                    inputOne: "revenue :",
                                    inputTwo: value.isEmpty
                                        ? ''
                                        : user['revenue'] ?? 'waiting',
                                  ),
                                  SizedBox(
                                    width: width / 1,
                                    height: height / 12,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            // handleApprovalButtonPress(context);
                                          },
                                          child: CustomButtomCommon(
                                            width: width,
                                            height: height,
                                            textValue: "Wallet Tranfer",
                                            heightNeeded: 17,
                                            widthNeeded: 2,
                                            colorNeeded: Colors.greenAccent,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            // handleIgnoreButtonPress(context);
                                          },
                                          child: CustomButtomCommon(
                                            width: width,
                                            height: height,
                                            textValue: "Edit",
                                            heightNeeded: 17,
                                            widthNeeded: 3.2,
                                            colorNeeded: Colors.redAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: width / 1,
                                    height: height / 12,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            // handleApprovalButtonPress(context);
                                          },
                                          child: CustomButtomCommon(
                                            width: width,
                                            height: height,
                                            textValue: "Delete",
                                            heightNeeded: 17,
                                            widthNeeded: 2,
                                            colorNeeded: Colors.redAccent,
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            // handleIgnoreButtonPress(context);
                                          },
                                          child: CustomButtomCommon(
                                            width: width,
                                            height: height,
                                            textValue: "Ban",
                                            heightNeeded: 17,
                                            widthNeeded: 3.2,
                                            colorNeeded: Colors.redAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                                                        ),
                            );
                          },
                          
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
