import 'package:flutter/material.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changTheme(ThemeMode.light);
              },
              child: settingsProvider.currentTheme == ThemeMode.light
                  ? getSelectedItem('Light')
                  : getUnSelectedItem('Light')),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changTheme(ThemeMode.dark);
              },
              child: settingsProvider.currentTheme == ThemeMode.dark
                  ? getSelectedItem('Dark')
                  : getUnSelectedItem('Dark')),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB7935F)),
        ),
        Spacer(),
        Icon(
          (Icons.check),
          color: Color(0xFFB7935F),
          size: 28,
          weight: 28,
        ),
      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB7935F)),
        ),
      ],
    );
  }
}
