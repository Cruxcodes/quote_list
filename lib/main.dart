import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Quotes.dart';
import 'package:flutter_tutorial/quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quotes> quotes = [
    Quotes('Abdullah', "The rice on the tree is a goat in the moon"),
    Quotes('Tinubu', "Cassava garri ewa"),
    Quotes('Abdullah', "To be broken is only a story the fixed get to tell"),
    Quotes('James', "TLive Love Learn"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is quotes'),
        backgroundColor: Colors.grey[400],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
