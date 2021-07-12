import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Container(
            //color: Colors.teal,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Container(
                  width:100,
                  color:Colors.red,
                  
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:100,
                        height: 100,
                        color:Colors.yellow,
                      ),
                      Container(
                        width:100,
                        height: 100,
                        color:Colors.green[300],
                      ),
                    ],
                  ),
                ),
                Container(
                  width:100,
                  color:Colors.blue,
                ),
              ]
            ),
          ),
        ),
      ),
      
    );
  }
}