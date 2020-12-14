import 'package:flutter/material.dart';
import 'package:flutter_project/model/post.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Sample'),
      ),
      body: ListView.builder(
        itemCount: Post.posts.length,
        itemBuilder: _itemBuilder,
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(Post.posts[index].imgUrl),
          SizedBox(
            height: 6.0,
          ),
          Text(Post.posts[index].title,
              style: Theme.of(context).textTheme.headline5),
          SizedBox(height: 6.0),
          Text(Post.posts[index].author,
              style: Theme.of(context).textTheme.headline6),
          SizedBox(height: 6.0)
        ],
      ),
    );
  }
}
