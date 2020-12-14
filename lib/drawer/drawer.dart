import 'package:flutter/material.dart';

import 'UserAccountHeaderDrawer.dart';

void main() => runApp(DrawerWidget());

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple
        ),
        // home: DrawerHeaderWidget()
        home: UserAccountHeaderDrawerWidget());
  }
}
