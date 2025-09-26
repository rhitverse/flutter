import 'package:coading/components/app_text_field.dart';
import 'package:coading/components/toolbar.dart';
import 'package:coading/components/user_avatar.dart';
import 'package:coading/config/app_strings.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editprofile),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children:[
            Stack(
                  children: [
                            UserAvatar(
                              size: 120,
                            ),
                            Positioned(bottom: 0,right: 0,child: Icon(Icons.edit))
                          ],
                        ),
            AppTextField(hint: 'First name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Last name'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Phone number'),
            SizedBox(
              height: 16,
            ),
            AppTextField(hint: 'Location'),
          ],
        ),
      ),
    );
  }
}
