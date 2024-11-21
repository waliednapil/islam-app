import 'package:flutter/material.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
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
                settingsProvider.changLocal('en');
              },
              child: settingsProvider.currentLocal == 'en'
                  ? getSelectedItem('English')
                  : getUnSelectedItem('English')),
          SizedBox(
            height: 18,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changLocal('ar');
              },
              child: settingsProvider.currentLocal == 'ar'
                  ? getSelectedItem('Arabic')
                  : getUnSelectedItem('Arabic')),
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
