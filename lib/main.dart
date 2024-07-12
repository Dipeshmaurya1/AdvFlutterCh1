import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/DailyTask/Task 1.1/View/switchDarkTheme_toLightTheme.dart';
import 'Screens/DailyTask/Task 1.2/View/screen_1.dart';
import 'Screens/DailyTask/Task 1.4/Provider/theme_change_provider.dart';
import 'Screens/DailyTask/Task 1.4/View/HomePage.dart';
import 'Screens/DailyTask/Task 1.5/Provider/quoteData_provider.dart';
import 'Screens/DailyTask/Task 1.5/View/QuoteScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuoteDataProvider(),
      builder: (context, child) =>  MaterialApp(
        // theme: ThemeData.light(),
        // darkTheme: ThemeData.dark(),
        // themeMode: Provider.of<QuoteDataProvider>(context).isDark
        //     ? ThemeMode.dark
        //     : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home:QuoteScreen(),
      ),
    );
  }
}
