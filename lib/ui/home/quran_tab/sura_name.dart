import 'package:flutter/material.dart';
import 'package:islam/ui/home/screens/sura_details_screen.dart';

class SuraName extends StatelessWidget {
  // SuraArgs suraArgs;
  // SuraName({required this.suraArgs});
  String suraName;
  int index;

  SuraName({
    required this.suraName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routName,
            arguments: SuraArgs(title: suraName, index: index));
      },
      child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                suraName,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          )),
    );
  }
}

class SuraArgs {
  String title;
  int index;

  SuraArgs({required this.title, required this.index});
}
