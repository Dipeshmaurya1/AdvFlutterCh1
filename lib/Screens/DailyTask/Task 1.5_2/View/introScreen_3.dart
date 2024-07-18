import 'package:advance_flutter_ch1/Screens/DailyTask/Task%201.5_2/View/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Utils/color.dart';
import '../Provider/intro_provider.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Food Express',
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 420,
              width: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('asstes/image/image3.png'),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enjoy with everyone',
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'From doorstep to dinner table in no time. ',
              style: TextStyle(color: primaryColor, fontSize: 18),
            ),
            Text(
              'Discover convenience with every bite.',
              style: TextStyle(color: primaryColor, fontSize: 18),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Provider.of<IntroProvider>(context, listen: false).setValues();
                    ;
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>  HomeScreen()));
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context) => HomeScreen()));
                  },
                  child: Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Center(
                        child: Text(
                          'Let\'s Go ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}