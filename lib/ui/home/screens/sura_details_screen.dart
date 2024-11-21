import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:islam/ui/home/quran_tab/sura_name.dart';
import 'package:islam/ui/home/screens/quran_details.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routName = 'Sura-Details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];
  static String length = '';

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) {
      readQuranFile(args.index);
    }

    return verses.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(settingsProvider.getBackground()),
                    fit: BoxFit.fill)),
            child: Scaffold(
              appBar: AppBar(
                title: Text(
                  args.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              body: Card(
                  color: Colors.transparent,
                  margin: EdgeInsets.all(26),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 32),
                      width: double.infinity,
                      height: 2,
                    ),
                    itemBuilder: (context, index) => QuranDetails(
                      quranText: verses[index],
                    ),
                    itemCount: verses.length,
                  )),
            ),
          );
  }

  void readQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;

    for (int i = 0; i < suraLines.length; i++) {}
    setState(() {});
  }
}
