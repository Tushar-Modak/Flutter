import 'package:flutter/material.dart';
class IdCard extends StatefulWidget {
  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:AssetImage('images/Scan.jpg'), 
                ),
              SizedBox(
                height:10,
              ),
              Text("Tushar Modak",
              style: TextStyle(
                fontFamily: 'BadScript',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              ),
              SizedBox(
                height:5,
              ),
              Text("FLUTTER DEVELOPER",
              style: TextStyle(
                fontFamily: 'Tegomin',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
                letterSpacing: 6.0,
              ),
              ),
              Divider(
                thickness: 2,
                color: Colors.teal.shade100,
                height: 30,
                indent: 100,
                endIndent: 100,
              ),
              SizedBox(
                height:10,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left:15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    ),
                  
                  child:Row(children: [
                    Icon(Icons.phone,
                    color: Colors.teal,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text("+8801622-011652",
                    style:TextStyle(
                      fontFamily: 'Tegomin',
                      fontSize: 20,
                      color: Colors.teal,
                      ),
                    ),
                  ],)
                ),
              ),
              SizedBox(
                      height: 10,
                    ),
              Center(
                child: Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(left:15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    ),
                  
                  child:Row(children: [
                    Icon(Icons.mail,
                    color: Colors.teal,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text("abir33tusahr@gmail.com",
                    style:TextStyle(
                      fontFamily: 'Tegomin',
                      fontSize: 20,
                      color: Colors.teal,
                      ),
                    ),
                  ],)
                ),
              ),
            ],
            ),
        )
      ),
    );
  }
}