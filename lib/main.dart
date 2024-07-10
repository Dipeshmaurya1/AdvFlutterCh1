import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/DailyTask/Task 1.1/View/switchDarkTheme_toLightTheme.dart';
import 'Screens/DailyTask/Task 1.4/Provider/theme_change_provider.dart';
import 'Screens/DailyTask/Task 1.4/View/HomePage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChangeThemeProvider(),
      builder: (context, child) =>  MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode: Provider.of<ChangeThemeProvider>(context).isDark
            ? ThemeMode.dark
            : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: ChangeThemeScreen(),
      ),
    );
  }
}
