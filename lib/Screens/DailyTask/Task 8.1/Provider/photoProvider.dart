import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Modal/photoModal.dart';


class PhotoProvider extends ChangeNotifier {
  List<Photo> photoList = [];

  Future<List> jsonParsing() async {
    String json = await rootBundle.loadString('assets/JSON/photosData.json');
    List photo = jsonDecode(json);
    return photo;
  }

  Future<void> fromList() async {
    List photo = await jsonParsing();
    photoList = photo.map((e) => Photo.fromMap(e),).toList();
    notifyListeners();
  }

  PhotoProvider() {
    fromList();
    notifyListeners();
  }
}