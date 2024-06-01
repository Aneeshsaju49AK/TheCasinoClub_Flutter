import 'package:thecasinoclub/export/export.dart';

class UserInfoInAuthentication extends StatelessWidget {
  const UserInfoInAuthentication({
    super.key,
    required this.width,
    required this.height,
    required this.inputOne,
    required this.inputTwo,
  });

  final double width;
  final double height;
  final String inputOne;
  final String inputTwo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width / 1,
        height: height / 17,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomTextWidget(
              text: inputOne,
              fontSize: 18,
            ),
            const CustomSizedBox(
              widthvalue: 10,
            ),
            CustomTextWidget(
              text: inputTwo,
              fontSize: 18,
            ),
          ],
        ),
      ),
    );
  }
}
