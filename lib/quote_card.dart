import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete;
  QuoteCard({ required this.quote, required this.delete });


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Text(
              "${quote.text}",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "${quote.author}",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[800]
              ),
            ),
            const SizedBox(height: 8.0),
            IconButton(
                onPressed: delete,
                icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}