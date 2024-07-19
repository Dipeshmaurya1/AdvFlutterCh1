import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/photoProvider.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoProvider photoProviderTrue = Provider.of<PhotoProvider>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Json Data'),
        ),
        body: ListView.builder(
          itemCount: photoProviderTrue.photoList.length,
          itemBuilder: (context, index) => ListTile(
            leading: Image.network(photoProviderTrue.photoList[index].url),
            title: Text(
              photoProviderTrue.photoList[index].title,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            subtitle: Text(photoProviderTrue.photoList[index].id.toString(),
                style: TextStyle(fontSize: 20)),
          ),
        ));
  }
}
