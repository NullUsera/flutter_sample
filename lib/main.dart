import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //MaterialApp是Material库中提供的Flutter APP框架，通过它可以设置APP的名称、
    //主题、语言、首页及路由列表等
    return new MaterialApp(
      //APP名称
      title: "flutter demo",
      //主题颜色
      theme: new ThemeData(primarySwatch: Colors.blue),
      //APP首页路由
      home: new HomePage(),
    );
  }
}

//APP的首页，StatefulWidget表示有状态的组件，这些状态在Widget生命周期中是可变的
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("首页"),
      ),
      body: new Center(
        child: Column(
          children: [Text("column-1"), Text("Column-2")],
        ),
      ),
    );
  }
}
