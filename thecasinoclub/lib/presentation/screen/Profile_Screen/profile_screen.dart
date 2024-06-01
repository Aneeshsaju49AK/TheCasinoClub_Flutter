import 'package:thecasinoclub/export/export.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        PageHeadingCommon(
          width: width,
          height: height,
          textValue: "Profile",
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: width / 1,
            height: height / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: Row(
              children: [
                ProfileImageWidget(width: width, height: height),
                SizedBox(
                  width: width / 1.8,
                  height: height / 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ProfileUserInfoWidgts(
                            width: width,
                            height: height,
                            inputone: "Id",
                            inputtwo: "19489"),
                        ProfileUserInfoWidgts(
                            width: width,
                            height: height,
                            inputone: "userName",
                            inputtwo: "aneesh@73"),
                        ProfileUserInfoWidgts(
                            width: width,
                            height: height,
                            inputone: "Name",
                            inputtwo: "Aneesh"),
                        ProfileUserInfoWidgts(
                            width: width,
                            height: height,
                            inputone: "password",
                            inputtwo: "allllljdd"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        OptionWidgetInProfile(width: width, height: height)
      ],
    );
  }
}
