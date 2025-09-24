import 'package:coading/styles/app_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/temp/user1.png', width: 90, height: 90),
          SizedBox(height: 24),
          Text('Steve Harrington', style: AppText.header2),
          SizedBox(height: 12),
          Text('Hawkins,America', style: AppText.subtitle3),
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
}
