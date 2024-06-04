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
    List<IconData> platformsIcons = [
      Icons.android,
      Icons.gamepad,
      Icons.ios_share,
      Icons.gamepad_outlined,
      Icons.web,
      Icons.games,
      Icons.play_circle,
      Icons.games_rounded
    ];
    List<String> gameNames =[
      'rammy',
      'cricket',
      'football',
      'bascket ball',
      'hand ball',
      'kabadi',
      'chess',
      'pluzz',
    ];
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
              itemCount: 8,
              itemBuilder: (context, index) {
                return  Column(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      child: Icon(platformsIcons[index]),
                    ),
                    CustomTextWidget(
                      text: gameNames[index],
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
