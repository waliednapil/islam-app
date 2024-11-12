import 'package:flutter/material.dart';
import 'package:islam/ui/home/home_screen.dart';
import 'package:islam/ui/home/screens/sura_details_screen.dart';
import 'package:islam/ui/home/splsh_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
            centerTitle: true,
          ),
          scaffoldBackgroundColor: Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
              selectedIconTheme: IconThemeData(size: 45)),
          cardColor: Colors.white),
      routes: {
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routName: (context) => SplashScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
