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
                Container(
                  width: width / 2.5,
                  height: height / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                      ),
                      CustomTextWidget(text: "Aneesh")
                    ],
                  ),
                ),
                Container(
                  width: width / 1.8,
                  height: height / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: width / 1,
                        height: height / 14,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: "id",
                              fontSize: 12,
                            ),
                            CustomTextWidget(
                              text: "192928",
                              fontSize: 16,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: width / 1,
                        height: height / 14,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: "userName",
                              fontSize: 12,
                            ),
                            CustomTextWidget(
                              text: "aneesh@73",
                              fontSize: 16,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: width / 1,
                        height: height / 14,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: "Name",
                              fontSize: 12,
                            ),
                            CustomTextWidget(
                              text: "aneesh",
                              fontSize: 16,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: width / 1,
                        height: height / 14,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomTextWidget(
                              text: "Password",
                              fontSize: 12,
                            ),
                            CustomTextWidget(
                              text: "aneesh@73dd",
                              fontSize: 16,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: width/1,
          height: height/4,
          color: Colors.blueGrey,
        child: Column(
          children: [
            CashPointWidget(height: height,width: width,textValue: "Options",)
          ],
        ),
        )
      ],
    );
  }
}
