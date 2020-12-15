import 'package:flutter/material.dart';

void main() {
  runApp(SampleApp());
}

//快捷键stl+回车键快速生成模板代码
class SampleApp extends StatelessWidget {
  //this widget is the root of application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sample App',
      home: SampleAppPage(),
    );
  }
}

//快捷键stf+回车键快速生成模板代码
class SampleAppPage extends StatefulWidget {
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  //default placeholder text
  String textToShow = 'I like Flutter';
  bool isDefault = true;

  void _updateText() {
    setState(() {
      textToShow = isDefault ? 'I like Flutter' : 'Flutter is Awesome!';
      isDefault = !isDefault;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample App'),
      ),
      body: Center(
        child: Text(textToShow),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        child: Icon(Icons.update),
      ),
    );
  }
}
