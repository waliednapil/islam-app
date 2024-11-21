import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islam/ui/home/home_screen.dart';
import 'package:islam/ui/home/screens/sura_details_screen.dart';
import 'package:islam/ui/home/splsh_screen.dart';
import 'package:islam/ui/styles/my_theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // arabic
      ],
      locale: Locale(settingsProvider.currentLocal),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingsProvider.currentTheme,
      routes: {
        HadethDetailsScreen.routName: (context) => HadethDetailsScreen(),
        SuraDetailsScreen.routName: (context) => SuraDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routName: (context) => SplashScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
