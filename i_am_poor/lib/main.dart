import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('I am Poor')),
            backgroundColor: Colors.grey[800],
          ),
          body: Center(
            child: Image(
              image: NetworkImage('https://atlas-content-cdn.pixelsquid.com/stock-images/lump-of-coal-mda9AN7-600.jpg')
            ),
          )
        ),
      ),
    );
