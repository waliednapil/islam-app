import 'package:flutter/material.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_tab.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'Hadeth-details';

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/main_background.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Container(
          padding: EdgeInsets.all(22),
          child: SingleChildScrollView(
            child: Card(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        args.title,
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      )),
                  Container(
                      padding: EdgeInsets.all(18),
                      child: Text(
                        args.content,
                        style: TextStyle(fontSize: 18),
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
