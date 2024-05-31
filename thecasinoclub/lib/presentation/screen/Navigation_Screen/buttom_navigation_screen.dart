import 'package:thecasinoclub/export/export.dart';
// in this widget or class have the valueNotifier called indexChangeNotifier
// this class have a private list called "_pages"
// this wiget is listen to indexchangeNotofoer and return the current page index
// in this widget having a bottomNavigationBar and having separate widget called "BottomNavigatorWidget"
ValueNotifier<int> indexChaneNotifer = ValueNotifier(0);

class BottomNavigatorOption extends StatelessWidget {
  BottomNavigatorOption({super.key});
  final _pages = [
   const HomeScreen(),
   const GamesScreen(),
   const AuthenticationScreen(),
   const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChaneNotifer,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar:const BottomNavigationWidget(),
    );
  }
}
