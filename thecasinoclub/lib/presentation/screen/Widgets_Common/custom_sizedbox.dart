import 'package:thecasinoclub/export/export.dart';

class CustomSizedBox extends StatelessWidget {
  final double? widthvalue;
  final double? heightvalue;
  const CustomSizedBox({
    super.key,
     this.widthvalue,
     this.heightvalue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthvalue,
      height: heightvalue,
    );
  }
}