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
                return const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 32,
                      ),
                      CustomTextWidget(
                        text: "green",
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