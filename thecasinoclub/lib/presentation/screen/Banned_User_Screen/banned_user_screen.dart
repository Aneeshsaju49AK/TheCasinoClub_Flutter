import 'package:thecasinoclub/export/export.dart';

class BannedUserScreen extends StatelessWidget {
  const BannedUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageHeadingCommon(
              width: width,
              height: height,
              textValue: "Banned Users",
            ),
            Container(
                width: width / 1,
                height: height / 1.2,
                color: Colors.amberAccent,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: width / 1,
                        height: height / 10,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Column(
                                children: [
                                  Row(
                                    children: [
                                      Text("username :"),
                                      Text("data")
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("password :"),
                                      Text("data")
                                    ],
                                  )
                                ],
                              ),
                              CustomButtomCommon(
                                height: height,
                                width: width,
                                heightNeeded: 18,
                                widthNeeded: 4,
                                textValue: "Acative",
                                colorNeeded: Colors.green,
                              )
                            ]),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
