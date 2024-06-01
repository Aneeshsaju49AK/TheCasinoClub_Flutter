import 'package:thecasinoclub/export/export.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 1,
      height: height / 2,
      child: Column(
        children: [
          CashPointWidget(
            height: height / 1,
            width: width / 1,
            textValue: "Win was End Point trend by Monthly",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: width / 1,
              height: height / 2.4,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LineChart(
                  LineChartData(
                    minX: 1,
                    maxX: 12,
                    maxY: 100,
                    minY: 0,
                    lineBarsData: [
                      LineChartBarData(
                        spots: const [
                          FlSpot(1, 0),
                          FlSpot(2, 30),
                          FlSpot(3, 40),
                          FlSpot(4, 60),
                          FlSpot(5, 30),
                        ],
                        isCurved: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
