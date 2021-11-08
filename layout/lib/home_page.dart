import 'package:flutter/material.dart';
import 'package:layout/pages/current.dart';
import 'package:layout/pages/empathy.dart';
import 'package:layout/pages/feed.dart';
import 'package:layout/pages/my.dart';
import 'package:layout/pages/spon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //버튼 눌렀을때 다른 페이지로 넘어가는지
  final List<Widget> _children=[
    FeedPage(),
    CurrentPage(),
    SponPage(),
    EmpathyPage(),
    MyPage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[300],
        currentIndex: _selectedIndex,
        onTap:_navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.view_list), label: '피드'),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: '현황'),
          BottomNavigationBarItem(icon: Icon(Icons.cloud), label: '후원하기'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: '공감'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '내정보'),
        ],

       
      ),
    );
  }
}
