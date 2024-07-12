import 'package:flutter/material.dart';
class QuoteModel
{
  String? author;
  String? quote;
  QuoteModel({this.author,this.quote});
  factory QuoteModel.fromQuote(Map m1){
    return QuoteModel(author: m1['author'], quote: m1['quote']);
  }
  List<QuoteModel> quoteModelList = [];
  QuoteModel.toList({required List l1})
  {
    for(int i=0; i<l1.length;i++)
    {
      quoteModelList.add(QuoteModel.fromQuote(l1[i]));
    }
  }
}