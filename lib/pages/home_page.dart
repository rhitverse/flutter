import 'package:coading/components/post_item.dart';
import 'package:coading/styles/app_colors.dart';
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

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(PostItem());
    }
    return users;
  }
}
