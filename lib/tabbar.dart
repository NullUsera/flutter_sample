import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TabBarWidget());

class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //基础色
          primarySwatch: Colors.yellow,
          //高亮显示颜色
          highlightColor: Colors.white,
          //水波纹颜色
          splashColor: Colors.white70),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //通过DefaultTabController联动TabBar和TabBarView
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Navigation Widget'),
          elevation: 0.0,
          //左上角展开Navigation图标
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation',
            //当onPressed()为null时，leading图标显示是不可用状态
            //只有设置了事件才会是可点击状态
            // onPressed: null,
            onPressed: () => debugPrint('leading button is pressed...'),
          ),
          //右上角图标
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('action button is pressed...'),
            )
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(
                icon: Icon(Icons.change_history),
              ),
              Tab(
                icon: Icon(Icons.directions_bike),
              )
            ],
          ),
        ),
        //TabBarView显示TabBar标签的内容
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.local_florist,
              size: 128.0,
              color: Colors.black12,
            ),
            Icon(
              Icons.change_history,
              size: 128.0,
              color: Colors.blue,
            ),
            Icon(
              Icons.directions_bike,
              size: 128.0,
              color: Colors.amberAccent,
            )
          ],
        ),
      ),
    );
  }
}
