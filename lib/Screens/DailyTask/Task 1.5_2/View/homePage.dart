
import 'package:flutter/material.dart';

import '../../../../Utils/color.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(


        centerTitle: true,
        title: Text('Home Screen',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 150,),
            SizedBox(height: 20,),
            Text('Welcome',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 36),)
          ],
        ),
      ),
    );
  }
}