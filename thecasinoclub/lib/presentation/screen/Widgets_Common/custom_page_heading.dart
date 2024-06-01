import 'package:thecasinoclub/export/export.dart';

class PageHeadingCommon extends StatelessWidget {
  const PageHeadingCommon({
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
      height: height / 10,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon:const Icon(
              Icons.backspace,
            ),
          ),
          SizedBox(
            width: width / 1.2,
            child: Center(
              child: CustomTextWidget(
                text: textValue,
                fontSize: 34,
              ),
            ),
          ),
        ],
      ),
    );
  }
}