import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListViewSampleApp());

class ListViewSampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Sample'),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.favorite_border),
              title: Text('$index号技师'),
              subtitle: Text('服务时间:2020年12月10日'),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          },
        ),
      ),
    );
  }
}
