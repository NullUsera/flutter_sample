import 'package:flutter/material.dart';

//显示用户信息的侧边栏
class UserAccountHeaderDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('UserAccountHeaderDrawer'),
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 2.0,
            tabs: <Widget>[Text('全部'), Text('已支付'), Text('待支付')],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.select_all, color: Colors.blue, size: 130.0),
            Text('已支付'),
            Text('待支付')
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'NullUserA',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                'renhe228@gmail.com',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607946955860&di=a97157737f34f0bf7e15192a8a20113a&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F24%2F78%2F20300000291746133783784887147.jpg'),
              ),
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
        )),
      ),
    );
  }

  void _onNavigationPop(BuildContext context) {
    Navigator.pop(context);
  }
}