import 'package:flutter/material.dart';

void main() => runApp(DrawerWidget());

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Widget'),
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'leading menu',
          //   onPressed: null,
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search button',
              onPressed: null,
            )
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.blue,
            tabs: [
              Icon(Icons.first_page),
              Icon(Icons.fire_extinguisher),
              Icon(Icons.local_activity)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.first_page_sharp, size: 128.0, color: Colors.blue),
            Icon(Icons.fire_extinguisher, size: 128.0, color: Colors.red),
            Icon(Icons.local_activity, size: 128.0, color: Colors.amber)
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'.toUpperCase()),
                decoration: BoxDecoration(color: Colors.grey[100]),
              ),
              ListTile(
                title: Text('Message', textAlign: TextAlign.left),
                leading: Icon(Icons.message),
                //按下时关闭侧边栏菜单
                onTap: () => _onDrawerTap(context),
              ),
              ListTile(
                  title: Text('Favorite', textAlign: TextAlign.left),
                  leading: Icon(Icons.favorite),
                  onTap: () => _onDrawerTap(context)),
              ListTile(
                  title: Text('Setting', textAlign: TextAlign.left),
                  leading: Icon(Icons.settings),
                  onTap: () => _onDrawerTap(context)),
              ListTile(
                  title: Text('Wallet', textAlign: TextAlign.left),
                  leading: Icon(Icons.wallet_membership),
                  onTap: () => _onDrawerTap(context))
            ],
          ),
        ),
      ),
    );
  }

  void _onDrawerTap(BuildContext context) {
    Navigator.pop(context);
  }
}
