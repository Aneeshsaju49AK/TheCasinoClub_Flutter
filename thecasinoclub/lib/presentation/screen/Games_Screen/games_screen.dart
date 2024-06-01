import 'package:thecasinoclub/export/export.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // List<double> monthlyExpense = [
    //   0.0,
    //   3.40,
    //   14.30,
    //   26.48,
    //   45.20,
    //   35.30,
    // ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          PageHeadingCommon(
            width: width,
            height: height,
            textValue: "Games",
          ),
          GameListedWidget(width: width, height: height),
          LineChartWidget(width: width, height: height),
          PlayerStatusSection(width: width, height: height),
        ],
      ),
    );
  }
}
