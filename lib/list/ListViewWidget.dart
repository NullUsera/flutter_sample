import 'package:flutter/material.dart';
import 'package:flutter_project/list/Home.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        //主题颜色
        primarySwatch: Colors.yellow,
      ),
      home: Home(),
    );
  }
}
