import 'package:coading/styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
     return Row(
      children: [
        Image.asset('assets/temp/user1.png', width: 40, height: 40),
        SizedBox(width: 16),
        Text("Steve Harrinton", style: AppText.subtitle3),
      ],
    );
  }
}