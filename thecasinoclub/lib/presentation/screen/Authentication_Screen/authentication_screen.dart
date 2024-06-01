import 'package:flutter/material.dart';
import 'package:thecasinoclub/export/export.dart';
import 'package:thecasinoclub/presentation/screen/Games_Screen/games_screen.dart';
import 'package:thecasinoclub/presentation/screen/Widgets_Common/cashpoint_heading_container.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          PageHeadingCommon(
            width: width,
            height: height,
            textValue: "Authentication",
          ),
          CashPointWidget(
            height: height,
            width: width,
            textValue: "List of Request",
          ),
          SingleChildScrollView(
            child: Container(
              width: width / 1,
              height: height / 1.3,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: width / 1.5,
                      height: height / 2.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 214, 203, 162),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width/1,
                              height: height/17,
                             
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextWidget(text: "Id :",fontSize: 18,),
                                  CustomSizedBox(widthvalue: 10,),
                                   CustomTextWidget(text: "10",fontSize: 18,),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width/1,
                              height: height/17,
                              
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextWidget(text: "UserName :",fontSize: 18,),
                                  CustomSizedBox(widthvalue: 10,),
                                   CustomTextWidget(text: "Aneesh@73",fontSize: 18,),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width/1,
                              height: height/17,
                              
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextWidget(text: "Name :",fontSize: 18,),
                                  CustomSizedBox(widthvalue: 10,),
                                   CustomTextWidget(text: "Aneesh",fontSize: 18,),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: width/1,
                              height: height/17,
                              
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextWidget(text: "Balance :",fontSize: 18,),
                                  CustomSizedBox(widthvalue: 10,),
                                   CustomTextWidget(text: "1000",fontSize: 18,),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width/1,
                            height: height/ 12,
                           
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: width/2,
                                  height: height/17,
                                  
                                  decoration: BoxDecoration(
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(child: CustomTextWidget(text: "Approval",fontSize: 16,),),
                                ),
                                Container(
                                  width: width/3.2,
                                  height: height/17,
                                  
                                  decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Center(child: CustomTextWidget(text: "Ignore",fontSize: 16,)),
                                ),
                              ],
                            ),
                          )
                        ],
                        
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
