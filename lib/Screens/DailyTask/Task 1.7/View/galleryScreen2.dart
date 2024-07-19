

import 'package:flutter/material.dart';

import '../../../../Utils/ImageList/gallery_list.dart';

class GalleryScreen2 extends StatelessWidget {
  const GalleryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          size: 28,
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Recent',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,color: Colors.black),
        ),
        actions: [
          Icon(Icons.search,color: Colors.black,),
          Icon(Icons.more_vert,color: Colors.black,),
          SizedBox(width: width*0.012,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14, top: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.046,color: Colors.black),
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                        fontSize: width * 0.04),
                  ),
                ],
              ),
              SizedBox(height: height*0.02,),
              Wrap(
                spacing: width*0.0221,
                children: [
                  ...List.generate(lockData1.length, (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.080,
                          width: width*0.166,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image/galleryImages/2.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),),
                ],
              ),
              SizedBox(height: height*0.004,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.046,color: Colors.black),
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.blue,
                        fontSize: width * 0.04),
                  ),
                ],
              ),
              SizedBox(height: height*0.02,),
              Wrap(
                spacing: width*0.0221,
                children: [
                  ...List.generate(lockData1.length, (index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      children: [
                        Container(
                          height: height*0.080,
                          width: width*0.166,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/image/galleryImages/3.jpeg'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}