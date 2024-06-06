import 'package:thecasinoclub/export/export.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void handleApprovalButtonPress(BuildContext context) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool("isAdminAuth", true);

      authentication.value.removeAt(0);
    }

    void handleIgnoreButtonPress(BuildContext context) {
      Navigator.pop(context);
    }

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
            child: SizedBox(
              width: width / 1,
              height: height / 2,
              child: ValueListenableBuilder(
                valueListenable: authentication,
                builder: (context, value, _) {
                  if (value.isEmpty) {
                    return const SizedBox(
                      child: Center(
                        child: Text("No Requests"),
                      ),
                    );
                  } else {
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
                                  : value[0]['username'] ?? '',
                            ),
                            UserInfoInAuthentication(
                              width: width,
                              height: height,
                              inputOne: "Name :",
                              inputTwo:
                                  value.isEmpty ? '' : value[0]['email'] ?? '',
                            ),
                            UserInfoInAuthentication(
                              width: width,
                              height: height,
                              inputOne: "Balance :",
                              inputTwo:
                                  value.isEmpty ? '' : value[0]['mobile'] ?? '',
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
                                      handleApprovalButtonPress(context);
                                    },
                                    child: CustomButtomCommon(
                                      width: width,
                                      height: height,
                                      textValue: "Approval",
                                      heightNeeded: 17,
                                      widthNeeded: 2,
                                      colorNeeded: Colors.greenAccent,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      handleIgnoreButtonPress(context);
                                    },
                                    child: CustomButtomCommon(
                                      width: width,
                                      height: height,
                                      textValue: "Ignore",
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
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
