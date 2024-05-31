import 'package:thecasinoclub/export/export.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //In this widget to valueListenableBuilder to change the BottomNavigation items
    return ValueListenableBuilder(
      valueListenable: indexChaneNotifer,
      builder: (context, int index, _) {
        return BottomNavigationBar(
          // in this valueListenableBuilder having int index which is set as currentIndex of the BottomnavigationBar

          currentIndex: index,
          // the default ontap function of bottomNavigationBar is used to  change the value of valueNotifier current value;

          onTap: (index) {
            indexChaneNotifer.value = index;
          },
          // the type and the selected and unselected is set the values
          // also the selected and unselected icons
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: KBlack,
          unselectedItemColor: kGrey,
          selectedIconTheme: const IconThemeData(
            color: KBlack,
          ),
          unselectedIconTheme: const IconThemeData(
            color: kGrey,
          ),
          //in this section 5 option given to navigate
          // the options are...
          //Home
          //Games
          //Authentication
          //Profile
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.games,
              ),
              label: "Games",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.approval,
              ),
              label: "Authentication",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "profile",
            ),
          ],
        );
      },
    );
  }
}
