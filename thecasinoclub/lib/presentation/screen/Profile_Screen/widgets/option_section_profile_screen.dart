import 'package:flutter/material.dart';
import 'package:thecasinoclub/export/export.dart';
import 'package:thecasinoclub/presentation/screen/Banned_User_Screen/banned_user_screen.dart';
import 'package:thecasinoclub/presentation/screen/Policy_Screen/policy_screen.dart';
import 'package:thecasinoclub/presentation/screen/Summary_Screen/summary_screen.dart';
import 'package:thecasinoclub/presentation/screen/Transaction_Screen/transaction_screen.dart';

class OptionWidgetInProfile extends StatelessWidget {
  const OptionWidgetInProfile({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    List<String> optionsName = [
      'Policy',
      'Transaction',
      'summary',
      'banned User',
      'LogOut',
    ];
    List<IconData> optionsIcons = [
      Icons.policy,
      Icons.file_copy,
      Icons.summarize,
      Icons.block,
      Icons.logout,
    ];

    List<Widget> optionsScreen = [
      PolicyScreen(),
      TransactionScreen(),
      SummaryScreen(),
      BannedUserScreen(),
      LoginScreen(),
    ];
    return SizedBox(
      width: width / 1,
      height: height / 4,
      child: Column(
        children: [
          CashPointWidget(
            height: height,
            width: width,
            textValue: "Options",
          ),
          SizedBox(
            width: width / 1.1,
            height: height / 5.3,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if (optionsScreen[index] == optionsScreen[4]) {
                          showDialog(context: context,
                           builder: (context) {
                             return AlertDialog(
                              title: Text("Confirmation"),
                              content: Text("Are you sure you want to exit"),
                              actions: [
                                TextButton(onPressed: () {
                                  navigateToScreenPushReplacement(
                              context, optionsScreen[4]);
                                }, child: Text("Sure"),),
                                TextButton(onPressed: () {
                                  Navigator.of(context).pop();
                                }, child: Text("No"),),
                              ],
                             );
                           },);
                          
                        } else {
                          navigateToScreen(context, optionsScreen[index]);
                        }
                      },
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(optionsIcons[index]),
                      ),
                    ),
                    CustomTextWidget(
                      text: optionsName[index],
                      fontSize: 12,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
