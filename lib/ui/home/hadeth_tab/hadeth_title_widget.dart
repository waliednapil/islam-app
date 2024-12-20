import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_details_screen.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_tab.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routName,
            arguments: Hadeth(title: hadeth.title, content: hadeth.content));
      },
      child: Container(
          padding: EdgeInsets.all(12),
          alignment: Alignment.center,
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.titleMedium,
          )),
    );
  }
}
