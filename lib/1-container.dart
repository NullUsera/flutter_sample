import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContainerSample());
}

class ContainerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container sample'),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Container',
              style: TextStyle(fontSize: 30.0),
            ),
            padding: EdgeInsets.all(10.0),
            width: 200.0,
            height: 160,
            color: Colors.blue,
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(6.0),
          ),
        ),
      ),
    );
  }
}
