import 'package:thecasinoclub/export/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // this list made for show the value on gridview of heading
  List<String> optionsOfview = [
    "WholeSaler",
    "Retailer",
    "Operator",
    "Player",
  ];
  // this list is created to how the platforms which listed
  List<String> platformsOption = [
    "Android",
    "Ios",
    "Web",
  ];
  // in this late pagecontroller is initialised
  // and one variable which is local initialised as "0"
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
    //to set the width,and height use MediaQuery to access the width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // The all Page is Wrap with SingleChildScrollview
    return SingleChildScrollView(
      child: Column(
        children: [
          //this widget is resposiable for the Welcome message
          //also take width and height as parameters
          WelcomeHeadHomeWidget(width: width, height: height),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              top: 14,
              right: 14,
            ),
            // This widget is responsible for the gridview with four options
            // the parameters are width,height,list of options
            child: GridViewForOptionsWidgetsHome(
                width: width, height: height, optionsOfview: optionsOfview),
          ),
          // This sizedBox is used to create the CarouselSlider
          // no state mgt used so not refactored
          SizedBox(
            width: width / 1,
            height: height / 3,
            child: Column(
              children: [
                CashPointWidget(
                  width: width,
                  height: height,
                  textValue: "Cash Points",
                ),
                SizedBox(
                  width: width / 1,
                  height: height / 4.3,
                  child: CarouselSlider.builder(
                    itemCount: 3,
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
                // This is the widget is used for show the SmoothPageIndicators
                // paramters are width,height, also the controller
                SmoothPageIndicatorWidget(
                    width: width, height: height, controller: controller),
              ],
            ),
          ),

          // In this sized having the heading of platforms
          // also the circle avatar view
          // parameters are width,and height, also the list of platforms
          SizedBox(
            width: width / 1,
            height: height / 5,
            child: Column(
              children: [
                PlatformHeadingWidget(width: width, height: height),
                PlatformCircleWidget(
                    width: width,
                    height: height,
                    platformsOption: platformsOption),
              ],
            ),
          )
        ],
      ),
    );
  }
}
