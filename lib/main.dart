import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[900],
        elevation: 0.0,
      ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("You've clicked the button");
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[400],
          elevation: 0.0,
        ),

        body: Padding(
        padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja.jpg'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[600]
              ),
              Text(
                'NAME',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.00,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Chun-Li',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28.00,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.00,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 28.00,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                Text(
                  'chun-Li@ninja.net',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.00,
                    letterSpacing: 2.0,
                  ),
                )
              ]
            )
            ],
          ),
      ),
    );
  }
}

