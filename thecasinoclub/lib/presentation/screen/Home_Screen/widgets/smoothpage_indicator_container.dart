import 'package:thecasinoclub/export/export.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({
    super.key,
    required this.width,
    required this.height,
    required this.controller,
  });

  final double width;
  final double height;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 1,
      height: height / 22,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller,
          count: 3,
          effect: const WormEffect(),
        ),
      ),
    );
  }
}
