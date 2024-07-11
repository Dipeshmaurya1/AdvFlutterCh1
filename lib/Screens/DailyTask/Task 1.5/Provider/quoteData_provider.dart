import 'package:advance_flutter_ch1/Utils/quoteList.dart';
import 'package:flutter/material.dart';
class QuoteDataProvider extends ChangeNotifier
{
  String? quote;
  String? author;

  void quoteData()
  {
    quoteList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }
}