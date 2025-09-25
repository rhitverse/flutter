import 'package:coading/components/app_text_field.dart';
import 'package:coading/components/toolbar.dart';
import 'package:coading/config/app_strings.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editprofile),
      body: Column(
        children: [
          AppTextField(hint: 'First name'),
          AppTextField(hint: 'Last name'),
          AppTextField(hint: 'Phone number'),
          AppTextField(hint: 'Location'),
        ],
      ),
    );
  }
}
