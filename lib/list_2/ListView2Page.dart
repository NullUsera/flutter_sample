import 'package:flutter/material.dart';

void main() => runApp(ListView2Widget());

class ListView2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //主题颜色
          primarySwatch: Colors.yellow),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView-2 practice'),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: _itemBuilderWidget,
        ),
      ),
    );
  }

  Widget _itemBuilderWidget(BuildContext context, int index) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/flutter.jpg'),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '我是标题',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.amberAccent,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            '我是副标题',
            style: TextStyle(fontSize: 16.0, color: Colors.blue),
          ),
          SizedBox(
            height: 10.0,
            width: 10.0,
          )
        ],
      ),
    );
  }
}
