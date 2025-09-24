import 'package:coading/styles/app_text.dart';
import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/temp/user1.png', width: 40, height: 40),
              SizedBox(width: 16),
              Text(
                user, style: AppText.subtitle3),
            ],
          ),
          SizedBox(height: 12),
          Image.asset('assets/temp/post1.jpg'),
          SizedBox(height: 12),
          Text(
            'The Rising Sun reminds me of you bring light to my darkest days💖',
            style: AppText.subtitle3,
          ),
        ],
      ),
    );
  }
}
