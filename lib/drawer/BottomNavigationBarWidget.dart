import 'package:flutter/material.dart';

class BottomNavigationItemWidget extends StatefulWidget {
  @override
  _BottomNavigationItemWidgetState createState() =>
      _BottomNavigationItemWidgetState();
}

class _BottomNavigationItemWidgetState
    extends State<BottomNavigationItemWidget> {
  int _currentIndex = 0;

  void _setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //设置当前index
        currentIndex: _currentIndex,
        //获取当前index
        onTap: (index) => _setCurrentIndex(index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.reorder), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My')
        ]);
  }
}
