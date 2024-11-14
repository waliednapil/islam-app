import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam/ui/home/hadeth_tab/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) loadHadethFile();
    return ahadeth.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            child: Column(
              children: [
                Image.asset('assets/images/hadeth_header_image.png'),
                Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(
                                width: 2, color: Color(0xFFB7935F)))),
                    child: Text(
                      'Ahadeth',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                Expanded(
                  child: ListView.separated(
                      padding: EdgeInsets.all(12),
                      itemBuilder: (context, index) =>
                          HadethTitleWidget(hadeth: ahadeth[index]),
                      separatorBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 45),
                            color: Color(0xFFB7935F),
                            width: double.infinity,
                            height: 2,
                          ),
                      itemCount: ahadeth.length),
                )
              ],
            ),
          );
  }

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allAhadeth = fileContent.trim().split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> hadethLines = allAhadeth[i].trim().split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      String hadethContent = hadethLines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: hadethContent);
      ahadeth.add(hadeth);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth({required this.title, required this.content});
}
