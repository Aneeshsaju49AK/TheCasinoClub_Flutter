import 'package:thecasinoclub/export/export.dart';

class LandingpageScreen extends StatefulWidget {
  const LandingpageScreen({
    super.key,
    this.optionsOfview,
    required this.pageName,
  });

  final List<String>? optionsOfview;
  final String pageName;

  @override
  State<LandingpageScreen> createState() => _LandingpageScreenState();
}

class _LandingpageScreenState extends State<LandingpageScreen> {
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
              textValue: widget.pageName,
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
                      itemCount: widget.optionsOfview?.length,
                      itemBuilder: (context, index, int realIndex) {
                        return InkWell(
                          onTap: () {
                            navigateToScreen(
                              context,
                              ViewpagePeopleunder(
                                viewname: widget.optionsOfview![index],
                              ),
                            );
                          },
                          child: Padding(
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
                                    widget.optionsOfview![index],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            "Total count of ${widget.optionsOfview![index]} :"),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        widget.optionsOfview!.length.toString(),
                                        style:const TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                const  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8.0),
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
                    count: widget.optionsOfview!.length,
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
        onPressed: () {
          navigateToScreen(
            context,
            AddUser(
              user: optionsAdd.length,
            ),
          );
        },
        child: const Text("Add"),
      ),
    );
  }

  List<String> optionsAdd = ['wholesaler', 'retailer', 'operator', 'player'];
}
