import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/post.dart';

void main() => runApp(ListApp());

class ListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  Widget _itemBuilder(BuildContext context, int index) {
    // return Text(Post.posts[index].title);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(16.0),
      //设置item显示视图
      child: Column(
        children: <Widget>[
          Image.network(Post.posts[index].imgUrl),
          SizedBox(
            height: 6.0,
          ),
          Text('书名：' + Post.posts[index].title,
              style: Theme.of(context).textTheme.headline5),
          SizedBox(
            height: 6.0,
          ),
          Text(
            '作者：' + Post.posts[index].author,
            style: Theme.of(context).textTheme.headline6,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('ListView'),
        elevation: 4.0,
      ),
      body: ListView.builder(
        itemCount: Post.posts.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }
}
