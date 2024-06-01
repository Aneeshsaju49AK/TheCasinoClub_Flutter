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
                const CircleAvatar(
                  radius: 40,
                ),
                CustomTextWidget(
                  text: platformsOption[index],
                  fontSize: 10,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
