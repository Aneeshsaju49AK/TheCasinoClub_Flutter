import 'package:thecasinoclub/export/export.dart';

class PlatformHeadingWidget extends StatelessWidget {
  const PlatformHeadingWidget({
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
      height: height / 19,
      child: const Row(
        children: [
          CustomSizedBox(
            widthvalue: 20,
          ),
          CustomTextWidget(
            text: "Game Platfroms",
            fontSize: 20,
          ),
        ],
      ),
    );
  }
}
