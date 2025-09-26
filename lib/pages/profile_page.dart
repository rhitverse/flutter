import 'package:coading/components/toolbar.dart';
import 'package:coading/components/user_avatar.dart';
import 'package:coading/config/app_routes.dart';
import 'package:coading/styles/app_text.dart';
import 'package:flutter/material.dart';

enum ProfileMenu { edit, logout }

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        title: 'Profile',
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).pushNamed(AppRoutes.editprofile);
                  break;
                case ProfileMenu.logout:
                  print('logout');
                  break;
                default:
              }
            },
            icon: const Icon(Icons.more_vert_rounded),
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: ProfileMenu.edit, child: Text('Edit')),
                PopupMenuItem(
                  value: ProfileMenu.logout,
                  child: Text('Log Out'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          UserAvatar(size: 90,),
          SizedBox(height: 24),
          Text('Steve Harrington', style: AppText.header2),
          SizedBox(height: 12),
          Text('Hawkins,America', style: AppText.subtitle3),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('69', style: AppText.header2),
                  Text('Post'),
                ],
              ),
              Column(
                children: [
                  Text('100k', style: AppText.header2),
                  Text('Followers'),
                ],
              ),
              Column(
                children: [
                  Text('119', style: AppText.header2),
                  Text('Following'),
                ],
              ),
            ],
          ),
          Divider(thickness: 1, height: 24),
        ],
      ),
    );
  }

  Widget? widget({required Row child}) {
    return null;
  }
}
