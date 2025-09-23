import 'package:coading/styles/app_colors.dart';
import 'package:coading/styles/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: false,
        title: Text('5minuteflutter', style: TextStyle(color: Colors.white)),
        actions: [Icon(Icons.add_ic_call_outlined)],
      ),
      body: ListView(children: mockUsersFromServer()),
    );
  }

  Widget _userItem() {
    return Row(
      children: [
        Image.asset('assets/temp/user1.png', width: 40, height: 40),
        SizedBox(width: 16),
        Text("Steve Harrinton", style: AppText.subtitle3),
      ],
    );
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(_userItem());
    }
    return users;
  }
}
