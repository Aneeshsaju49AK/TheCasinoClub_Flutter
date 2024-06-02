import 'package:thecasinoclub/export/export.dart';
import 'package:thecasinoclub/presentation/screen/Signin_Screen/sigin_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width / 2,
                        height: height / 3.7,
                        child: Image.asset(
                          "assets/images/cartoon-man-wearing-glasses_23-2151136799.avif",
                        ),
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: height / 3.5,
              child: Container(
                width: width / 1,
                height: height / 1.5,
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
                      height: height / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
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
                          InkWell(
                            onTap: () {
                              navigateToScreen(
                                    context,
                                    BottomNavigatorOption(),
                                  );
                            },
                            child: CustomButtomCommon(
                              height: height,
                              width: width,
                              heightNeeded: 15,
                              widthNeeded: 1.5,
                              textValue: "Login",
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                text: "Don't have any Account?",
                                fontSize: 13,
                              ),
                              TextButton(
                                onPressed: () {
                                  navigateToScreen(
                                    context,
                                    SiginScreen(),
                                  );
                                },
                                child: Text(
                                  "Signin",
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

class CustomTextEditField extends StatelessWidget {
  const CustomTextEditField({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 1.1,
      height: height / 15,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "UserName",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
      ),
    );
  }
}
