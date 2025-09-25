import 'package:coading/pages/edit_profile_page.dart';
import 'package:coading/pages/home_page.dart';
import 'package:coading/pages/login_page.dart';
import 'package:coading/pages/main_page.dart';

class AppRoutes {
  static final Pages = {
    '/': (context) => LoginPage(),
    '/home': (context) => HomePage(),
    '/main': (context) => MainPage(),
    '/edit_profile': (context) => EditProfilePage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editprofile = '/edit_profile';
}
