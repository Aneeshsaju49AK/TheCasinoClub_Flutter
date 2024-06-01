import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:thecasinoclub/export/export.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<double> monthlyExpense = [
      0.0,
      3.40,
      14.30,
      26.48,
      45.20,
      35.30,
    ];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          PageHeadingCommon(width: width, height: height,textValue: "Games",),
          Container(
            width: width / 1,
            height: height / 3,
            child: Column(
              children: [
                CashPointWidget(
                  height: height / 1,
                  width: width / 1,
                  textValue: "Games Listed",
                ),
                Container(
                  width: width / 1,
                  height: height / 3.6,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                          ),
                          CustomTextWidget(
                            text: "games",
                            fontSize: 10,
                          ),
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
          Container(
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
                          lineBarsData: [LineChartBarData(spots: [
                            FlSpot(1, 0),
                            FlSpot(2, 30),
                            FlSpot(3, 40),
                            FlSpot(4, 60),
                            FlSpot(5, 30),
                                        
                          ],
                          isCurved: true,
                          ),],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: width / 1,
            height: height / 5,
            
            child: Column(
              children: [
                CashPointWidget(
                  height: height / 1,
                  width: width / 1,
                  textValue: "Player Status",
                ),
                Container(
                  width: width/1,
                  height: height/8,
                  
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,itemCount: 4,itemBuilder: (context, index) {
                    
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(radius: 32,),
                          CustomTextWidget(text: "green",fontSize: 10,),
                      
                        ],
                      ),
                    );
                  },),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PageHeadingCommon extends StatelessWidget {
  const PageHeadingCommon({
    super.key,
    required this.width,
    required this.height,
    required this.textValue,
  });

  final double width;
  final double height;
  final String textValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 1,
      height: height / 10,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.backspace,
            ),
          ),
          SizedBox(
            width: width / 1.2,
            child: Center(
              child: CustomTextWidget(
                text: textValue,
                fontSize: 34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
