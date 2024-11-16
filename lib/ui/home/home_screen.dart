import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islam/ui/home/quran_tab/quran_tab.dart';
import 'package:islam/ui/home/radio_tab/radio_tab.dart';
import 'package:islam/ui/home/settings_tab/settings_tab.dart';
import 'package:islam/ui/home/tasbeh_tab/tasbeh_tab.dart';
import 'package:islam/ui/styles/my_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndexTab = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.isDarkSelected
                  ? 'assets/images/main_background_dark.png'
                  : 'assets/images/main_background.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'isalmi',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndexTab,
          onTap: (index) {
            selectedIndexTab = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/hadeth_icon.png')),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                label: "Tasbeh"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                label: "Radio"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: Icon(Icons.settings),
                label: "Settings"),
          ],
        ),
        body: tabs[selectedIndexTab],
      ),
    );
  }
}
