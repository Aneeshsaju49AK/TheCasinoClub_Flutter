import 'package:thecasinoclub/export/export.dart';

class LandingpageScreen extends StatefulWidget {
  const LandingpageScreen({super.key});

  @override
  State<LandingpageScreen> createState() => _LandingpageScreenState();
}

class _LandingpageScreenState extends State<LandingpageScreen> {
  List<String> optionsOfview = [
    "WholeSaler",
    "Retailer",
    "Operator",
    "Player",
  ];
  late PageController controller;
  int _currentIndex = 0;

  //called init method for now and pagecontroller is set as _currentIndex
  @override
  void initState() {
    controller = PageController(initialPage: _currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller = PageController(initialPage: _currentIndex);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageHeadingCommon(
              width: width,
              height: height,
              textValue: "Wholesale",
            ),
            SizedBox(
              width: width / 1,
              height: height / 3,
              child: Column(
                children: [
                  CashPointWidget(
                    height: height,
                    width: width,
                    textValue: "View your",
                  ),
                  SizedBox(
                    width: width / 1,
                    height: height / 4.3,
                    child: CarouselSlider.builder(
                      itemCount: 4,
                      itemBuilder: (context, index, int realIndex) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: width / 1.1,
                            height: height / 4.3,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(
                                20,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  optionsOfview[index],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                          "Total count of ${optionsOfview[index]} :"),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      optionsOfview.length.toString(),
                                      style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "See All",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: height / 4,
                        autoPlay: true,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  SmoothPageIndicatorWidget(
                    width: width,
                    height: height,
                    controller: controller,
                    count: 4,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width / 1,
              height: height / 2,
              child: Column(
                children: [
                  CashPointWidget(
                    height: height,
                    width: width,
                    textValue: "Details show",
                  ),
                  SizedBox(
                    width: width / 1,
                    height: height / 2.3,
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 12,
                            right: 12,
                            bottom: 5,
                            top: 8,
                          ),
                          child: Container(
                            width: width / 1,
                            height: height / 4,
                            decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text("Add"),
      ),
    );
  }
}
