import 'package:thecasinoclub/export/export.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width / 2.5,
      height: height / 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const CircleAvatar(
            radius: 50,
          ),
         const CustomTextWidget(text: "Aneesh"),
          CustomButtomCommon(
            width: width,
            height: height,
            textValue: "Edit",
            heightNeeded: 35,
            widthNeeded: 4,
            colorNeeded: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
