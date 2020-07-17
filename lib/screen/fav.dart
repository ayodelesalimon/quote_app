import 'package:flutter/material.dart';
import 'package:quote_app/model/quote_model.dart';

class FavQuote extends StatelessWidget {
  final Question question;
  
  FavQuote({Key key, @required this.question}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(question.quote),
      ),
    );
  }

}