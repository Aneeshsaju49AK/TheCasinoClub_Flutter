import 'package:thecasinoclub/export/export.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //stating widget of this app called "The Casino Club"
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // This widget material app start
  // The title is given as "The Casino Club"
  // Also used ThemeData for a common Theme for the app
  // this wiget is navigating to BottomNavigationOption
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Casino Club',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      // home: BottomNavigatorOption(),
      // home: LoginScreen(),
      home: const StartingScreen(),
    );
  }
}
