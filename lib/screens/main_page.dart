import 'package:flutter/material.dart';
import 'package:submission_pemula/component/bottom_navigation.dart';
import 'package:submission_pemula/screens/cart_page.dart';
import 'package:submission_pemula/screens/favorite_page.dart';
import 'package:submission_pemula/screens/feed_page.dart';
import 'package:submission_pemula/screens/home_page.dart';
import 'package:submission_pemula/screens/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigation(updatePageFunc: updatePage),
        body: IndexedStack(
          index: _index,
          children: [
            HomePage(),
            const FavoritePage(),
            const FeedPage(),
            const ProfilePage(),
          ],
        ));
  }

  updatePage(int index){
    setState(() {
      _index = index;
    });
  }
}
