import 'package:flutter/material.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/custom_circle_button_common.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/custom_page_heading.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/custom_textediting_controller.dart';

import '../../../controller/common_function/common_function.dart';
ValueNotifier<List<Map<String, String?>>> adduserlist = ValueNotifier([]);
class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  void handleSaveAddButtonPress(BuildContext context){
    if(_formKey.currentState?.validate() ?? false){
     String username = usernameController.text;
     String password = passwordController.text;
     String transactionpass = transactionpassController.text;
     String name = nameController.text;
     String email = emailControlller.text;
     String revenue = revenueController.text;

     Map<String, String> userDetailsMap ={
      'username':username,
      'password':password,
      'transactionpass': transactionpass,
      'name': name,
      'email': email,
      'revenue': revenue,
     };

    adduserlist.value.add(userDetailsMap);


     usernameController.clear();
     passwordController.clear();
     transactionpassController.clear();
     nameController.clear();
     emailControlller.clear();
     revenueController.clear();

     Navigator.pop(context);
    }
  }
  final _formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final transactionpassController = TextEditingController();
  final nameController = TextEditingController();
  final emailControlller = TextEditingController();
  final revenueController = TextEditingController();
  List<String> textfilednames = [
    'username',
    'password',
    "Transcation password",
    'name',
    'email',
    'revenue',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PageHeadingCommon(
                width: width,
                height: height,
                textValue: 'Add Wholesaler',
              ),
              CustomTextEditField(
                height: height,
                width: width,
                label: textfilednames[0],
                controller: usernameController,
                validator: validateValue,
              ),
              CustomTextEditField(
                height: height,
                width: width,
                label: textfilednames[1],
                controller: passwordController,
                validator: validateValue,

              ),
              CustomTextEditField(
                height: height,
                width: width,
                label: textfilednames[2],
                controller: transactionpassController,
                validator: validateValue,
              ),
              CustomTextEditField(
                height: height,
                width: width,
                label: textfilednames[3],
                controller: nameController,
                validator: validateValue,
              ),
              CustomTextEditField(
                height: height,
                width: width,
                label: textfilednames[4],
                controller: emailControlller,
                validator: validateValue,
              ),
              CustomTextEditField(
                height: height,
                width: width,
                label: textfilednames[5],
                controller: revenueController,
                validator: validateValue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                  onTap: () {
                    handleSaveAddButtonPress(context);
                  },
                    child: CustomButtomCommon(
                      height: height,
                      width: width,
                      heightNeeded: 16,
                      widthNeeded: 3,
                      textValue: 'Save',
                      colorNeeded: Colors.greenAccent,
                    ),
                  ),
                  CustomButtomCommon(
                    height: height,
                    width: width,
                    heightNeeded: 16,
                    widthNeeded: 4,
                    textValue: 'clear',
                    colorNeeded: Colors.redAccent,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
