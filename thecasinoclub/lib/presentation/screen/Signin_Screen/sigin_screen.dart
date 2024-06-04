import 'package:shared_preferences/shared_preferences.dart';
import 'package:thecasinoclub/export/export.dart';

class SiginScreen extends StatefulWidget {
  const SiginScreen({super.key});

  @override
  State<SiginScreen> createState() => _SiginScreenState();
}

class _SiginScreenState extends State<SiginScreen> {
  final _formKey = GlobalKey<FormState>();
  final userNameController = TextEditingController();
  final mobileNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  Future<void> saveUserInfo(String username,String mobile,String email,String password,)async{
   final SharedPreferences preferences = await SharedPreferences.getInstance();
   await preferences.setString('username', username);
   await preferences.setString('mobile', mobile);
   await preferences.setString('email', email);
   await preferences.setString('password', password);
  }

  Future<Map<String, String?>> getUserInfo()async{
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final String? username = preferences.getString('username');
    final String? mobile = preferences.getString('mobile');
    final String? email = preferences.getString('email');
    final String? password = preferences.getString('password');
    return {
      'username': username,
      'mobile' : mobile,
      'email' : email,
      'password' : password,
    };
  }

  bool isPassword(String password){
    return RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).+$').hasMatch(password);
  }
  bool isEmailValid(String email){
    return RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(email); 
  }

  void  handleSignupButtonPress(BuildContext context)async{
    if(_formKey.currentState?.validate() ?? false){
      String username = userNameController.text;
      String mobile = mobileNumberController.text;
      String email = emailController.text;
      String password = passwordController.text;
      print(username);
      print(mobile);
      print(email);
      print(password);

      await saveUserInfo(username, mobile, email, password);
      if(!isEmailValid(email)){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid email format"),)
        );
        return;
      }

      if(!isPassword(password)){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid password format"),)
        );
        return;
      }

      navigateToScreen(context, LoginScreen());
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
            ),
            Positioned(
              top: height / 9,
              child: Container(
                width: width / 1,
                height: height / 1,
                decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
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
                        height: height / 2,
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomTextEditField(
                                width: width,
                                height: height,
                                controller: userNameController,
                                label: "Username",
                                validator: validateValue,
                              ),
                              CustomTextEditField(
                                width: width,
                                height: height,
                                controller: mobileNumberController,
                                label: "Mobile",
                                keyboardType: TextInputType.number,
                                validator: validateValue,
                              ),
                              CustomTextEditField(
                                width: width,
                                height: height,
                                controller: emailController,
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
                      InkWell(
                        onTap: () {
                         handleSignupButtonPress(context);
                        },
                        child: SizedBox(
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
                                  const CustomTextWidget(
                                    text: "Already have any Account?",
                                    fontSize: 13,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      navigateToScreen(
                                        context,
                                        StartingScreen(),
                                      );
                                    },
                                    child: const Text(
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
                      ),
                    ],
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
