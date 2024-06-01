import 'package:thecasinoclub/export/export.dart';

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
            child: SizedBox(
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
                          UserInfoInAuthentication(
                            width: width,
                            height: height,
                            inputOne: "Id :",
                            inputTwo: "10",
                          ),
                          UserInfoInAuthentication(
                            width: width,
                            height: height,
                            inputOne: "UserName :",
                            inputTwo: "Aneesh@73",
                          ),
                          UserInfoInAuthentication(
                            width: width,
                            height: height,
                            inputOne: "Name :",
                            inputTwo: "Aneesh@73",
                          ),
                          UserInfoInAuthentication(
                            width: width,
                            height: height,
                            inputOne: "Balance :",
                            inputTwo: "4573",
                          ),
                          SizedBox(
                            width: width / 1,
                            height: height / 12,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomButtomCommon(
                                  width: width,
                                  height: height,
                                  textValue: "Approval",
                                  heightNeeded: 17,
                                  widthNeeded: 2,
                                  colorNeeded: Colors.greenAccent,
                                ),
                                CustomButtomCommon(
                                  width: width,
                                  height: height,
                                  textValue: "Ignore",
                                  heightNeeded: 17,
                                  widthNeeded: 3.2,
                                  colorNeeded: Colors.redAccent,
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
