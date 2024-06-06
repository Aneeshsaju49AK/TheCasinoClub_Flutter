import 'package:thecasinoclub/export/export.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PageHeadingCommon(
              width: width,
              height: height,
              textValue: "Policy",
            ),
            const Text(
              'The Casino club',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const Text(
              'App Info',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text('''Author Details :
            author name : Aneesh saju
            version : 0.1 
            property : emergiotech
            '''),
            const Text(
              'Privacy policy ',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const Text('''Infromation Collect :
            Name,
            UserName,
            Mobile,
            Password,
            Profile pic,
        
            '''),
          ],
        ),
      ),
    );
  }
}
