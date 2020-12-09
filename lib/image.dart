import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(ImageSample());

class ImageSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imgUrl =
        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607509225261&di=c227e13694c8fe458f395f88d790ebe3&imgtype=0&src=http%3A%2F%2Fa0.att.hudong.com%2F30%2F29%2F01300000201438121627296084016.jpg';

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Sample'),
        ),
        body: Center(
          //使用列布局
          child: Column(
            children: [
              //加载网络图片
              Image.network(
                imgUrl,
                width: 500.0,
                height: 300.0,
              ),
              //加载本地图片
              Image.asset('assets/images/flutter.jpg'),
              //选择相册图片
              ImagePickerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImagePickerWidget extends StatefulWidget {
  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File _image;

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: _image == null
              ? Text('未选择图片')
              : Image.file(
                  _image,
                  width: 300.0,
                  height: 300.0,
                ),
        ),
        FlatButton(
          onPressed: _getImage,
          child: Text(
            '选择图片',
            style: TextStyle(fontSize: 20.0, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
