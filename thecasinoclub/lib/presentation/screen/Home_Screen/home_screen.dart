import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thecasinoclub/export/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late PageController controller;
  int _currentIndex =0;
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
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: width / 1,
            height: height / 9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width / 1.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Administator",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                CircleAvatar(
                  radius: 32,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 14,
              top: 14,
              right: 14,
            ),
            child: Container(
              width: width / 1,
              height: height / 2.3,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      width: width / 4,
                      height: height / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Colors.blue,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            width: width / 1,
            height: height / 3,
            child: Column(
              children: [
                Container(
                  width: width / 1,
                  height: height / 19,
                  child: Row(
                    children: [
                      CustomSizedBox(
                        value: 20,
                      ),
                      CustomTextWidget(
                        text: "Cash Points",
                      ),
                    ],
                  ),
                ),
                Container(
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
                      height: height/4,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  width: width / 1,
                  height: height / 22,
                  
                  child: Center(
                    child: SmoothPageIndicator(
                     
                      controller: controller , 
                    count: 3,
                    effect: WormEffect(),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width / 1,
            height: height / 5,
           
            child: Column(
              children: [
                Container(
                   width: width / 1,
                  height: height / 19,
                  child: Row(
                    children: [
                      CustomSizedBox(
                        value: 20,
                      ),
                      CustomTextWidget(text: "Game Platfroms",),
                    ],
                  ),
                ),
                Container(
                  width: width/1,
                  height: height/6.9,
                 
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(radius: 40,),
                          CustomTextWidget(text: "mobile",)
                        ],
                      ),
                    );
                  },),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  final String text;
  const CustomTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  final double value;
  const CustomSizedBox({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: value,
    );
  }
}
