import 'package:thecasinoclub/export/export.dart';

class GridViewForOptionsWidgetsHome extends StatelessWidget {
  const GridViewForOptionsWidgetsHome({
    super.key,
    required this.width,
    required this.height,
    required this.optionsOfview,
  });

  final double width;
  final double height;
  final List<String> optionsOfview;

  @override
  Widget build(BuildContext context) {
    List<String> optionsofPlayer = ['Active', 'offline', 'banned'];

    List<String> optionsOfviewWhole = [
      "Retailer",
      "Operator",
      "Player",
    ];
    List<String> optionsOfviewRetailer = [
      "Operator",
      "Player",
    ];
    List<String> optionsOfviewOperator = [
      "Player",
    ];
    List<Widget> optionScreen = [
      LandingpageScreen(
        optionsOfview: optionsOfviewWhole,
        pageName: 'Wholesaler',
      ),
      LandingpageScreen(
        optionsOfview: optionsOfviewRetailer,
        pageName: "Retailer",
      ),
      LandingpageScreen(
        optionsOfview: optionsOfviewOperator,
        pageName: "Operator",
      ),
      LandingpageScreen(
        optionsOfview: optionsofPlayer,
        pageName: "player",
      ),
    ];

    return SizedBox(
      width: width / 1,
      height: height / 2.3,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6.0),
            child: InkWell(
              onTap: () {
                navigateToScreen(
                  context,
                  optionScreen[index],
                );
              },
              child: Container(
                width: width / 4,
                height: height / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  color: Colors.blue,
                ),
                child: Center(
                  child: CustomTextWidget(
                    text: optionsOfview[index],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
