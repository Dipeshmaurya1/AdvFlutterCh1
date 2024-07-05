import 'package:advance_flutter_ch1/main.dart';
import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark?ThemeMode.light:ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Yo Man!',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
              Text("It's a simple example of\ndark theme",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
              SizedBox(height: 100,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isDark = true;
                  });
                },
                child: Container(
                  height: 90,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow
                  ),
                  child: Center(child: Text('Light Theme',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    isDark=false;
                  });
                },
                child: Container(
                  height: 90,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange
                  ),
                  child: Center(child: Text('Dark Theme',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

bool isDark = false;
