import 'package:thecasinoclub/export/export.dart';

class GameListedWidget extends StatelessWidget {
  const GameListedWidget({
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
      height: height / 3,
      child: Column(
        children: [
          CashPointWidget(
            height: height / 1,
            width: width / 1,
            textValue: "Games Listed",
          ),
          SizedBox(
            width: width / 1,
            height: height / 3.6,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Column(
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
    );
  }
}
