import 'package:flutter/material.dart';
import 'package:prctice_task1/Quote.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<Quotes> quotes=[
    Quotes(text:"Life is good",author: "ABC"),
    Quotes(text:"Wow wow wow",author: "CDR"),
    Quotes(text:"Try to chill",author: "FRH"),
    Quotes(text:"Oh really!",author: "KKM"),
    // Quotes(text:"So Pathetic",author: "JKL"),
    // Quotes(text:"Opps.. Dont panic",author: "ZW"),

  ];

  void deleteQuote(q)
  {
    setState(() {
      quotes.remove(q);
    });
    
  }

  Widget getTemplate(quotes)
  {
    return Card( 
      child: Padding(
        padding: EdgeInsets.all(12),
        child:Column(
            crossAxisAlignment:CrossAxisAlignment.stretch ,
            children: [
            Text(quotes.text),
            SizedBox(
              height:10,
            ),
            Text(quotes.author),
            // SizedBox(
            //   height:10,
            // ),
            FlatButton.icon(
              icon: Icon(Icons.delete), 
              label: Text("Delete Quote"),
              onPressed: (){
                deleteQuote(quotes);

              })
          ],)
        ),

      );
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quotes List"),
          ),
          body: Container(
            color: Colors.grey,
            child: Column(
              children: quotes.map((val) => getTemplate(val)).toList(),
          ),
          ),
        ), 
      
    );
  }
}




void main()
{
  runApp(MyApp());
}