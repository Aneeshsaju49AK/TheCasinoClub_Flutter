
import 'package:thecasinoclub/export/export.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        navigateToScreen(context, const LoginScreen(),);
                      },
                      child: CustomButtomCommon(
                        width: width,
                        height: height,
                        textValue: "User",
                        heightNeeded: 15,
                        widthNeeded: 1.2,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      navigateToScreen(context, BottomNavigatorOption(),);
                    },
                    child: CustomButtomCommon(
                      width: width,
                      height: height,
                      textValue: "Admin",
                      heightNeeded: 15,
                      widthNeeded: 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
