import 'package:thecasinoclub/export/export.dart';

class WelcomeHeadHomeWidget extends StatelessWidget {
  const WelcomeHeadHomeWidget({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width / 1,
      height: height / 9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: width / 1.7,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Administator",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const CircleAvatar(
            radius: 30,
            child: Icon(Icons.person_2),
          ),
        ],
      ),
    );
  }
}