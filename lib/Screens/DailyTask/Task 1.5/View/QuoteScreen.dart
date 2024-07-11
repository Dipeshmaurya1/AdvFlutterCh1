

import 'package:advance_flutter_ch1/Screens/DailyTask/Task%201.5/Model/quoteModel.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/quoteList.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    QuoteModelText = QuoteModel.toList(quoteList);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        centerTitle: true,
        title: Text('Quotes'),

      ),
      body: ListView.builder(itemCount: quoteList.length,itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: Text('${index + 1}',style: TextStyle(fontSize: 20),),
          title: Text(QuoteModelText.quoteModelList[index].quote!),
          subtitle: Text(QuoteModelText.quoteModelList[index].author!),
          trailing: IconButton(onPressed: () {

          }, icon: Icon(Icons.delete,color: Colors.red,)),
        ),
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
QuoteModel QuoteModelText = QuoteModel();