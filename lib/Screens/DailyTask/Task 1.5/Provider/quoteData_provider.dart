import 'package:advance_flutter_ch1/Screens/DailyTask/Task%201.5/View/QuoteScreen.dart';
import 'package:advance_flutter_ch1/Utils/quoteList.dart';
import 'package:flutter/material.dart';
class QuoteDataProvider extends ChangeNotifier
{
  String? quote;
  String? author;

  void addDetailsInProvider() {
    quote = txtQuote.text;
    author = txtAuthor.text;
  }

  void addQuoteInList() {
    quoteList.insert(0, {'quote': quote, 'author': author});
    notifyListeners();
  }

  void removeQuoteAtIndex(int index) {
    quoteList.removeAt(index);
    notifyListeners();
  }
}