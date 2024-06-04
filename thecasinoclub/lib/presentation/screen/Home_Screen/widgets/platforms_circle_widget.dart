import 'package:thecasinoclub/export/export.dart';

class PlatformCircleWidget extends StatelessWidget {
  const PlatformCircleWidget({
    super.key,
    required this.width,
    required this.height,
    required this.platformsOption,
  });

  final double width;
  final double height;
  final List<String> platformsOption;

  @override
  Widget build(BuildContext context) {
    List<IconData> platformsIcons = [
      Icons.android,
      Icons.ios_share,
      Icons.web,
    ];
    List<int> activeDevice = [
      10,0,2,
    ];
    return SizedBox(
      width: width / 1,
      height: height / 6.9,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: platformsOption.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      child: Icon(platformsIcons[index]),
                    ),
                    CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.amberAccent,
                      child: Text(activeDevice[index].toString()),
                    )
                  ],
                ),
                CustomTextWidget(
                  text: platformsOption[index],
                  fontSize: 13,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
