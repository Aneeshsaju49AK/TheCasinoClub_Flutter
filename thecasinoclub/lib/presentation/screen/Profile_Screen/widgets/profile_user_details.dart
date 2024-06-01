import 'package:thecasinoclub/export/export.dart';

class ProfileUserInfoWidgts extends StatelessWidget {
  const ProfileUserInfoWidgts({
    super.key,
    required this.width,
    required this.height,
    required this.inputone,
    required this.inputtwo,
  });

  final double width;
  final double height;
  final String inputone;
  final String inputtwo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 1,
      height: height / 14,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(
            text: inputone,
            fontSize: 12,
          ),
          CustomTextWidget(
            text: inputtwo,
            fontSize: 16,
          )
        ],
      ),
    );
  }
}
