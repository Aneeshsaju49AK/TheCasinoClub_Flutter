import 'package:thecasinoclub/export/export.dart';

class CashPointWidget extends StatelessWidget {
  const CashPointWidget({
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
      height: height / 19,
      child:  Row(
        children: [
          CustomSizedBox(
            widthvalue: 20,
          ),
          CustomTextWidget(
            text: textValue,
          ),
        ],
      ),
    );
  }
}
