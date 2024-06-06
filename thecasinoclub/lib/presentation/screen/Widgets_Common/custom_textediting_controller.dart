import 'package:thecasinoclub/export/export.dart';

class CustomTextEditField extends StatelessWidget {
  const CustomTextEditField({
    super.key,
    required this.width,
    required this.height,
    this.controller,
    this.label,
    this.validator,
    this.keyboardType = TextInputType.emailAddress,
  });
  final TextInputType keyboardType;
  final double width;
  final double height;
  final TextEditingController? controller;
  final String? label;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: width / 1.1,
      height: height / 15,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextFormField(
        clipBehavior: Clip.antiAlias,
        keyboardType: keyboardType,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onChanged: (value) {
          
        },
      ),
    );
  }
}
