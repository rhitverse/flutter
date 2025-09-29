import 'package:coading/config/app_icon.dart';
import 'package:coading/pages/home_page.dart';
import 'package:coading/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar:
      BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcon.icHome),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcon.icFavorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcon.icAdd),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcon.icMessage),
            label: 'Massage',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcon.icUser),
            label: 'User',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(child: Text('Favorite')),
    Center(child: Text('Add Post')),
    Center(child: Text('Massages')),
    ProfilePage(),
  ];
}

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(25))
          ),
        )
      ],
    );
  }
}

