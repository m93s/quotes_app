import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'a1',text: 'Be yourself something something'),
    Quote(author: 'a2',text: 'Be yourself something something'),
    Quote(author: 'a3',text: 'Be yourself something something'),
  ];




  List<String> authors = ['auth1','auth2','auth3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
       appBar: AppBar(
        title: Text('awesome quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>  QuoteCard (
            quote: quote,
           delete: (){
              setState(() {
                quotes.remove(quote);
              });
           }
        )).toList(),
      ),
    );
  }
}


