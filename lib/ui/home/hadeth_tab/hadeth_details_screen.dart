import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_tab.dart';
import 'package:islam/ui/styles/my_theme_data.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'Hadeth-details';

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(MyThemeData.isDarkSelected
                  ? 'assets/images/main_background_dark.png'
                  : 'assets/images/main_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Card(
              color: Colors.transparent,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.title,
                          style: Theme.of(context).textTheme.titleMedium)),
                  Container(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        args.content,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textDirection: TextDirection.rtl,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
