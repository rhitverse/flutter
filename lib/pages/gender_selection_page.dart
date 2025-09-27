import 'package:flutter/material.dart';
import 'edit_profile_page.dart'; // isme Gender enum defined hai

class GenderSelectionPage extends StatefulWidget {
  final Gender selectedGender;
  const GenderSelectionPage({required this.selectedGender, Key? key}) : super(key: key);

  @override
  _GenderSelectionPageState createState() => _GenderSelectionPageState();
}

class _GenderSelectionPageState extends State<GenderSelectionPage> {
  late Gender gender;

  @override
  void initState() {
    super.initState();
    gender = widget.selectedGender;
  }

  Widget buildGenderTile(String title, Gender value) {
    return InkWell(
      onTap: () {
        setState(() {
          gender = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 16, color: Colors.white)),
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey, width: 2),
              ),
              child: gender == value
                  ? Center(
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              )
                  : SizedBox(),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Instagram style
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Gender"),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Colors.white),
            onPressed: () {
              Navigator.pop(context, gender); // return selected gender
            },
          ),
        ],
      ),
      body: Column(
        children: [
          buildGenderTile("Male", Gender.male),
          buildGenderTile("Female", Gender.female),
          buildGenderTile("Custom", Gender.custom),
          buildGenderTile("Prefer not to say", Gender.preferNot),
        ],
      ),
    );
  }
}
