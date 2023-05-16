import 'package:flutter/material.dart';

import 'Quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final VoidCallback delete;

  const QuoteCard({
    super.key,
    required this.quote,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      margin: EdgeInsets.fromLTRB(16.0, 16.01, 16.0, 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    quote.quote,
                    style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    quote.author,
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[400]),
                  )
                ],
              ),
            ),
            ElevatedButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}
