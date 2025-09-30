import 'package:coading/components/bottom_navigation_item.dart';
import 'package:coading/config/app_icon.dart';
import 'package:coading/pages/home_page.dart';
import 'package:coading/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Menus currentIndex = Menus.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex.index],
      bottomNavigationBar: MyButtonNavigation(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Massages'),
    ),
    ProfilePage(),
  ];
}
enum Menus{
  home,
  favorite,
  addPost,
  massages,
  user,
}
class MyButtonNavigation extends StatelessWidget {
  final Menus currentIndex;
  final ValueChanged<Menus> onTap;
  const MyButtonNavigation(
      {super.key, required this.currentIndex, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(24),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25))
              ),
              child: Row(
                children: [
                  Expanded(
                      child:
                       BottomNavigationItem(
                           onPressed: () =>onTap(Menus.home),
                           icon: AppIcon.icHome,
                           current: currentIndex,
                           name: Menus.home),
                ),
                  Expanded(
                      child: BottomNavigationItem(
                  onPressed: () =>onTap(Menus.favorite),
                  icon: AppIcon.icFavorite,
                  current: currentIndex,
                  name: Menus.favorite)
                   ),
                  Spacer(),
                  Expanded(
                      child:
                      BottomNavigationItem(
                          onPressed: () =>onTap(Menus.massages),
                          icon: AppIcon.icMessage,
                          current: currentIndex,
                          name: Menus.massages)),
                  Expanded(
                      child: BottomNavigationItem(
                          onPressed: () =>onTap(Menus.user),
                          icon: AppIcon.icUser,
                          current: currentIndex,
                          name: Menus.user)),

                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(Menus.addPost),
              child: Container(
                width: 64,
                height: 64,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(AppIcon.icAdd),
              ),
            ),
          )
        ],
      ),
    );
  }
}