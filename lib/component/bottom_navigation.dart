import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  Function updatePageFunc;
  BottomNavigation({Key? key, required this.updatePageFunc}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value) {
        _index = value;
        widget.updatePageFunc(value);
      },
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      iconSize: 20,
      currentIndex: _index,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.home_outlined),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.home),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.star_outline),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.star),
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.feed_outlined),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.feed),
          ),
          label: 'Feed',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.account_circle_outlined),
          ),
          activeIcon: Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(Icons.account_circle),
          ),
          label: 'Profile',
        ),
      ],
    );
  }

  updateCart(){
    setState(() {});
  }
}
