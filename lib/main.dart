import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
   _TestState createState() => _TestState();
}

 class _TestState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: "A stitch in time save nine", author: "~Quan G" ) ,
    Quote(text: "Time is for spending there's only time", author: "~Time Itself"),
    Quote(text: "When you get to a fork in the road take it", author: "~Me again"),
    Quote(text: "A stitch in time save nine", author: "~Mr Me Me" ) ,
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: () {
              setState(() {
                quotes.remove(quote);
              });
        },
        )).toList(),
      )
    );
  }
 }

