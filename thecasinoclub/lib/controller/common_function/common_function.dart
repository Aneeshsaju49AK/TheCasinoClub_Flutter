import 'package:thecasinoclub/export/export.dart';

void navigateToScreen(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

void navigateToScreenPushReplacement(BuildContext context, Widget screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => screen,
    ),
  );
}

String? validateValue(String? value) {
  if (value == null || value.isEmpty) {
    return "Please enter valid info";
  }
  return null;
}
