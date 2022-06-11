import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home:QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {


  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List <Quote> quotes=[
    Quote(text: "Part of the journey is the end.",author: "Tony Stark"),
    Quote(text: "The hardest choices require the strongest wills.",author: "Thanos"),
    Quote(text: "No amount of money ever bought a second of time.",author: "Tony Stark"),
    Quote(text: "I can do this all day.",author: "Steve Rogers"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0,
      ),
      body: Column(
        children: quotes.map((e){
          return QuoteCard(quote:e,
          delete:(){
            setState(() {
              quotes.remove(e);
            });

              }
          );
        }).toList(),
      ),
    );
  }
}


