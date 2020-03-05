import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPage createState() => _BallPage();
}

class _BallPage extends State<BallPage> {
  int numb = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text('Ask Me Anything'),
        ),
      ),
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              numb = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$numb.png'),
        ),
      ),
    );
  }
}
