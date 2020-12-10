import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(TextSampleWidget());

class TextSampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text sample'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('我是一行文字，就是一行测试文字'),
              SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                    text: '我是一行文字，',
                    style: TextStyle(
                      fontSize: 26.0,
                      color: Colors.blue,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '点我调整到新页面',
                          style: TextStyle(fontSize: 26.0, color: Colors.red),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () async {
                              String url = 'https://www.baidu.com';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                throw 'error $url';
                              }
                            })
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
