import 'package:thecasinoclub/export/export.dart';
import 'package:thecasinoclub/presentation/screen/Login_Screen/login_screen.dart';

class SiginScreen extends StatelessWidget {
  const SiginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: width / 1,
              height: height / 1,
              color: Colors.blueAccent,
            ),
            Positioned(
              top: height / 9,
              child: Container(
                width: width / 1,
                height: height / 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width / 1.5,
                        height: height / 14,
                        child: Image.asset("assets/images/emrgio.png"),
                      ),
                    ),
                    Container(
                      width: width / 1,
                      height: height / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomTextEditField(width: width, height: height),
                          CustomTextEditField(width: width, height: height),
                          CustomTextEditField(width: width, height: height),
                          CustomTextEditField(width: width, height: height),
                          CustomTextEditField(width: width, height: height),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 1,
                      height: height / 7.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomButtomCommon(
                            height: height,
                            width: width,
                            heightNeeded: 15,
                            widthNeeded: 1.5,
                            textValue: "SignIn",
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                text: "Already have any Account?",
                                fontSize: 13,
                              ),
                              TextButton(
                                onPressed: () {
                                  
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: width / 1,
                      height: height / 9,
                      child: Column(
                        children: [
                          Text("Or"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: width / 2,
                                height: height / 13,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: CircleAvatar(
                                        radius: 25,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
