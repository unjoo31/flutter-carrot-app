import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_app/screens/chatting/chatting_screen.dart';
import 'package:flutter_carrot_app/screens/home/home_screen.dart';
import 'package:flutter_carrot_app/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter_carrot_app/screens/near_me/near_me_screen.dart';
import 'package:flutter_carrot_app/screens/neighborhood_life/heighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeScreen(),
          NeighborhoodLifeScreen(),
          NearMeScreen(),
          ChattingScreen(),
          MyCarrotScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
        items: [
          const BottomNavigationBarItem(
            label: "홈",
            icon: Icon(CupertinoIcons.home),
          ),
          const BottomNavigationBarItem(
            label: "채팅",
            icon: Icon(CupertinoIcons.chat_bubble),
          ),
          const BottomNavigationBarItem(
            label: "내 근처",
            icon: Icon(CupertinoIcons.placemark),
          ),
          const BottomNavigationBarItem(
            label: "채팅",
            icon: Icon(CupertinoIcons.chat_bubble_2),
          ),
          const BottomNavigationBarItem(
            label: "나의 당근",
            icon: Icon(CupertinoIcons.person),
          ),
        ],
      ),
    );
  }
}
