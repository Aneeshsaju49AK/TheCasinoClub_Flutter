import '../../../export/export.dart';

class CustomButtomCommon extends StatelessWidget {
  const CustomButtomCommon({
    super.key,
    required this.width,
    required this.height,
    required this.textValue,
    required this.heightNeeded,
    required this.widthNeeded,
    this.colorNeeded,

  });

  final double width;
  final double height;
  final String textValue;
  final double widthNeeded;
  final double heightNeeded;
  final Color? colorNeeded;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width/ widthNeeded,
      height: height/heightNeeded,
      
      decoration: BoxDecoration(
        color: colorNeeded ??const Color.fromARGB(50, 23, 157, 32),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(child: CustomTextWidget(text: textValue,fontSize: 16,),),
    );
  }
}
