import 'package:flutter/material.dart';

//一个简单的侧边栏效果
class DrawerHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Widget'),
          bottom: TabBar(
            indicatorWeight: 2.0,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Icon(Icons.message),
              Icon(Icons.settings),
              Icon(Icons.menu)
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(
              Icons.message,
              color: Colors.amber,
              size: 130.0,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 16.0),
                  Text(
                    'I am second tab',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 16.0),
                  Image.asset(
                    'assets/images/flutter.jpg',
                    width: 300.0,
                    height: 160.0,
                  ),
                ],
              ),
            ),
            Icon(Icons.menu, color: Colors.blue, size: 130.0)
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
              ListTile(
                  title: Text('Message'),
                  leading: Icon(Icons.message, color: Colors.grey),
                  onTap: () => _onNavigationPop(context)),
              ListTile(
                  title: Text('Favorite'),
                  leading: Icon(Icons.favorite, color: Colors.grey),
                  onTap: () => _onNavigationPop(context)),
              ListTile(
                  title: Text('Support'),
                  leading: Icon(Icons.recommend, color: Colors.grey),
                  onTap: () => _onNavigationPop(context)),
              ListTile(
                  title: Text('Wallet'),
                  leading: Icon(Icons.wallet_travel_sharp, color: Colors.grey),
                  onTap: () => _onNavigationPop(context)),
              ListTile(
                  title: Text('Setting'),
                  leading: Icon(Icons.settings, color: Colors.grey),
                  onTap: () => _onNavigationPop(context)),
            ],
          ),
        ),
      ),
    );
  }

  void _onNavigationPop(BuildContext context) {
    Navigator.pop(context);
  }
}
