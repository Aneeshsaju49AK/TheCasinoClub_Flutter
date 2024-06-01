import 'package:thecasinoclub/export/export.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 20,
      ),
    );
  }
}