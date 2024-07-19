import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Screens/DailyTask/Task 1.1/View/switchDarkTheme_toLightTheme.dart';
import 'Screens/DailyTask/Task 1.2/View/screen_1.dart';
import 'Screens/DailyTask/Task 1.4/Provider/theme_change_provider.dart';
import 'Screens/DailyTask/Task 1.4/View/HomePage.dart';
import 'Screens/DailyTask/Task 1.5/Provider/quoteData_provider.dart';
import 'Screens/DailyTask/Task 1.5/View/QuoteScreen.dart';
import 'Screens/DailyTask/Task 1.5_2/Provider/intro_provider.dart';
import 'Screens/DailyTask/Task 1.5_2/View/homePage.dart';
import 'Screens/DailyTask/Task 1.5_2/View/introPages1.dart';
import 'Screens/DailyTask/Task 1.7/Provider/gallery_Providerl.dart';
import 'Screens/DailyTask/Task 1.7/View/homeScreen.dart';
import 'Screens/DailyTask/Task 8.1/Provider/photoProvider.dart';
import 'Screens/DailyTask/Task 8.1/View/photoPage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(
        //   create: (context) => ChangeThemeProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => QuoteDataProvider(),
        // ),
        // ChangeNotifierProvider(
        //   create: (context) => GalleryProvider(),
        // ),
        ChangeNotifierProvider(
          create: (context) => PhotoProvider(),
        ),
      ],
      builder: (context, child) => MyApp(),
    ),
  );
  // runApp(MyApp(showHome : showHome));
}
// void main() {
//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(
//         create: (context) => ChangeThemeProvider(),
//       ),
//       ChangeNotifierProvider(
//         create: (context) => QuoteDataProvider(),
//       ),
//     ],
//     builder: (context, child) => MyApp(),
//   ));
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhotoPage(),
    );
  }
}
// Future<void> main()
// async {
//   WidgetsFlutterBinding.ensureInitialized();
//   SharedPreferences preferences = await SharedPreferences.getInstance();
//
//   bool shows = preferences.getBool('viewed') ?? false;  runApp(ChangeNotifierProvider(
//       create:(context)=>IntroProvider(shows),
//       child: MyApp()));
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home:Provider.of<IntroProvider>(context, listen: false).isClicked ?HomeScreen() :IntroScreen1(),
//       );
//
//   }
// }
