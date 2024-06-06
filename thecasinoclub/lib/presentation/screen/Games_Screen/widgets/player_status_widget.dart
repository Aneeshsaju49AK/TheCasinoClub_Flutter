import 'package:thecasinoclub/export/export.dart';

class PlayerStatusSection extends StatelessWidget {
  const PlayerStatusSection({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    List<String> statusOption = [
      'Active',
      'Paused',
      'Stoped',
      'Dismissed',
    ];

    List<Color> statusColor = [
      Colors.green,
      Colors.amberAccent,
      Colors.blue,
      Colors.red,
    ];
    return SizedBox(
      width: width / 1,
      height: height / 5,
      child: Column(
        children: [
          CashPointWidget(
            height: height / 1,
            width: width / 1,
            textValue: "Player Status",
          ),
          SizedBox(
            width: width / 1,
            height: height / 8,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding:const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: statusColor[index],
                          ),
                         const CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.amberAccent,
                            child: Text('1'),
                          )
                        ],
                      ),
                      CustomTextWidget(
                        text: statusOption[index],
                        fontSize: 10,
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
