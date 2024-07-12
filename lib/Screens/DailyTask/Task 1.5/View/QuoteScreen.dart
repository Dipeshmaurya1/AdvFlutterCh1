

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../Utils/quoteList.dart';
import '../Model/quoteModel.dart';
import '../Provider/quoteData_provider.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var homeProviderFalse = Provider.of<QuoteDataProvider>(context, listen: false);
    quoteModelText = QuoteModel.toList(l1: quoteList);
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan.shade50,
          scrolledUnderElevation: 0.1,
          centerTitle: true,
          leading: const Icon(
            Icons.menu,
            size: 30,
          ),
          title: const Text(
            'Quotes',
            style: TextStyle(fontSize: 30,),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: ListView.builder(
            itemCount: quoteModelText.quoteModelList.length,
            itemBuilder: (context, index) => Card(
              color: Colors.grey[200],
              child: ListTile(
                leading: Text('${index + 1}',style: TextStyle(fontSize: 17),),
                title: Text(quoteModelText.quoteModelList[index].quote!),
                subtitle: Text(quoteModelText.quoteModelList[index].author!),
                trailing: IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Delete this Quote ?'),
                        actions: [

                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancel',style: TextStyle(color: Colors.black),),
                          ),
                          TextButton(
                            onPressed: () {
                              homeProviderFalse.removeQuoteAtIndex(index);
                              Navigator.pop(context);
                            },
                            child: const Text('Confirm',style: TextStyle(color: Colors.red),),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan.shade50,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => Form(
                key: formKey,
                child: AlertDialog(
                  title: const Text('Add Quote and Author'),
                  actions: [
                    inputTextField(label: 'Quote', controller: txtQuote),
                    inputTextField(label: 'Author', controller: txtAuthor),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancel',style: TextStyle(color: Colors.black),),
                        ),
                        TextButton(
                          onPressed: () {
                            bool response = formKey.currentState!.validate();
                            if (response) {
                              homeProviderFalse.addDetailsInProvider();
                              homeProviderFalse.addQuoteInList();
                              Navigator.of(context).pop();
                            }
                            formKey.currentState!.reset();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
            size: 30,
          ),
        ),
      ),
    );
  }

  TextFormField inputTextField(
      {required label, required TextEditingController controller}) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required';
        }
        return null;
      },
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}

GlobalKey<FormState> formKey = GlobalKey();
var txtQuote = TextEditingController();
var txtAuthor = TextEditingController();
QuoteModel quoteModelText = QuoteModel();