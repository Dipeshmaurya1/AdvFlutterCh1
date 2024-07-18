import 'package:flutter/material.dart';

import '../../../../Utils/color.dart';
import 'introScreen_2.dart';
class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Food Express',
          style: TextStyle(color:primaryColor,fontWeight: FontWeight.bold),
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
                    image: AssetImage('asstes/image/image1.png'),
                  )
              ),

            ),
            SizedBox(height: 10,),
            Text('Delivery to your home',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 32),),
            SizedBox(height: 10,),
            Text('From doorstep to dinner table in no time. ',style: TextStyle(color: primaryColor,fontSize: 18),),
            Text('Discover convenience with every bite.',style: TextStyle(color: primaryColor,fontSize: 18),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                      color: SecondaryColor,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomRight: Radius.circular(25))
                  ),
                  child: Center(child: Text('Skip',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),)),
                ),
                InkWell(onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => IntroScreen2()));

                },
                  child: Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),bottomLeft: Radius.circular(25))
                    ),
                    child: Center(child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
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