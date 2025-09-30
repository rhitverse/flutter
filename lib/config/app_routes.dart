import 'package:coading/pages/edit_profile_page.dart';
import 'package:coading/pages/home_page.dart';
import 'package:coading/pages/login_page.dart';
import 'package:coading/pages/main_page.dart';
import 'package:coading/pages/nearby_page.dart';

class AppRoutes {
  static final Pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(),
    editprofile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editprofile = '/edit_profile';
  static const nearby = '/nearby';
}
