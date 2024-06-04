import 'package:shared_preferences/shared_preferences.dart';
import 'package:thecasinoclub/export/export.dart';

ValueNotifier<List<Map<String, String?>>> authentication = ValueNotifier([]);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void handleLoginButtonPress(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      String? storedUsername = preferences.getString('username');
      String? storedMobile = preferences.getString('mobile');
      String? storedEmail = preferences.getString('email');
      String? storedPassword = preferences.getString('password');
      bool isAdminAuthenticated = preferences.getBool("isAdminAuth") ?? false;

      String enteredUsername = userNameController.text;
      String enteredPassword = passwordController.text;

      if (enteredUsername == 'Admin@Casino' && enteredPassword == 'admin') {
        preferences.setBool('isLoggedIn', true);
        navigateToScreenPushReplacement(
          context,
          BottomNavigatorOption(),
        );
      } else if (storedUsername == enteredUsername &&
          storedPassword == enteredPassword) {
        if (isAdminAuthenticated == true) {
          navigateToScreenPushReplacement(
            context,
            BottomNavigatorOption(),
          );
        } else {
          authentication.value = [
            {
              'username': storedUsername,
              'mobile': storedMobile,
              'email': storedEmail,
              'password': storedPassword,
            }
          ];

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content:
                  Text('Username & Password verfied Wait for admin Approval'),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Invalid credentials. Please try again.'),
          ),
        );
      }
    }
  }

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
                      child: SizedBox(
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
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: width / 1.5,
                        height: height / 14,
                        child: Image.asset("assets/images/emrgio.png"),
                      ),
                    ),
                    SizedBox(
                      width: width / 1,
                      height: height / 4,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomTextEditField(
                              width: width,
                              height: height,
                              controller: userNameController,
                              label: "Email",
                              validator: validateValue,
                            ),
                            CustomTextEditField(
                              width: width,
                              height: height,
                              controller: passwordController,
                              label: "Password",
                              validator: validateValue,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 1,
                      height: height / 7.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              // navigateToScreen(
                              //       context,
                              //       BottomNavigatorOption(),
                              //     );
                              handleLoginButtonPress(context);
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
                              const CustomTextWidget(
                                text: "Don't have any Account?",
                                fontSize: 13,
                              ),
                              TextButton(
                                onPressed: () {
                                  navigateToScreen(
                                    context,
                                    const SiginScreen(),
                                  );
                                },
                                child: const Text(
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
                    SizedBox(
                      width: width / 1,
                      height: height / 9,
                      child: Column(
                        children: [
                          const Text("Or"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: width / 2,
                                height: height / 13,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) {
                                    return const Padding(
                                      padding: EdgeInsets.all(5.0),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
