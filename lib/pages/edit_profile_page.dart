import 'package:coading/components/app_text_field.dart';
import 'package:coading/components/toolbar.dart';
import 'package:coading/styles/app_text.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: 'Edit Profile'),
      body: Column(
        children: [
          AppTextField(hint: 'First Name'),
          AppTextField(hint: 'Last Name'),
          AppTextField(hint: 'Phone Number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
