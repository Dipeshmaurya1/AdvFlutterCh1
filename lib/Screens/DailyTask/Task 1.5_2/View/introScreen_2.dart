import 'package:flutter/material.dart';

import '../../../../Utils/color.dart';
import 'introScreen_3.dart';
class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

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
              height: 360,
              width: 360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('asstes/image/image2.png'),
                  )
              ),

            ),
            SizedBox(height: 10,),
            Text('Prepared by exparets',style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold,fontSize: 32),),
            SizedBox(height: 20,),
            Text('Delicious meals, delivered fast.Welcome to your ',style: TextStyle(color: primaryColor,fontSize: 18),),
            Text(' new favorite way to dine.',style: TextStyle(color: primaryColor,fontSize: 18),),
            SizedBox(height: 80,),
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
                InkWell( onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => IntroScreen3()));
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