import 'package:coading/components/app_text_field.dart';
import 'package:coading/components/toolbar.dart';
import 'package:coading/components/user_avatar.dart';
import 'package:coading/config/app_strings.dart';
import 'package:coading/styles/app_colors.dart';
import 'package:flutter/material.dart';

enum Gender { none,male, female, other}
class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(title: AppStrings.editprofile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children:[
              Stack(
                    children: [
                      UserAvatar(
                        size: 120,
                              ),
                      Positioned(bottom: 0,right: 0,
                          child: Container(
                              padding: const EdgeInsetsGeometry.all(3),
                              decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.all(Radius.circular(6))),
                              child: Icon(Icons.edit,size: 20,)))
                            ],
                          ),
              SizedBox(
                height: 60,
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
              AppTextField(hint: 'Date of Birth'),
              SizedBox(height: 16),
              AppTextField(hint: 'Location'),
              RadioListTile(
                title: Text(AppStrings.male),
                  value: Gender.male,
                groupValue:gender,
                onChanged: (value){
                    setState(() {
                      gender = Gender.male;
                    });
                },
              ),
              RadioListTile(
                title: Text(AppStrings.female),
                value: Gender.female,
                groupValue:gender,
                onChanged: (value){
                  setState(() {
                    gender = Gender.female;
                  });
                },
              ),
              RadioListTile(
                title: Text(AppStrings.other),
                value: Gender.other,
                groupValue:gender,
                onChanged: (value){
                setState(() {
                  gender = Gender.other;
                });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
