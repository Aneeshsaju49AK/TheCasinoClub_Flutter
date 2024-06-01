import 'package:thecasinoclub/export/export.dart';

class OptionWidgetInProfile extends StatelessWidget {
  const OptionWidgetInProfile({
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
      height: height / 4,
      child: Column(
        children: [
          CashPointWidget(
            height: height,
            width: width,
            textValue: "Options",
          ),
          SizedBox(
            width: width / 1.1,
            height: height / 5.3,
            child: GridView.builder(
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    CircleAvatar(
                      radius: 42,
                    ),
                    CustomTextWidget(
                      text: "Transaction",
                      fontSize: 12,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
