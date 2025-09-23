import 'package:coading/pages/home_page.dart';
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_home.svg'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_fav.svg'),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_add.svg'),
            label: 'Add Post',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_sms.svg'),
            label: 'Massage',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/svg/ic_user.svg'),
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
        backgroundColor: Colors.amber,
      ),
    );
  }
  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),),
    Center(
      child: Text('Add Post'),),
    Center(
      child: Text('Massages'),),
    Center(
      child: Text('User'),),
  ];
}
