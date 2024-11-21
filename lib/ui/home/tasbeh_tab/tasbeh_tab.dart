import 'package:flutter/material.dart';
import 'package:islam/providers/settings_provider.dart';
import 'package:provider/provider.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter = 0;
  int index = 0;
  double angle = 0;

  List<String> tasbeh = [
    'سبحان الله',
    'الحمد لله',
    'لا الاه الا الله',
    'الله اكبر',
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingProvider>(context);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/head_of_seb7a.png',
                        height: 100,
                      )),
                ),
                GestureDetector(
                  onTap: counterMethod,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Transform.rotate(
                            angle: angle,
                            child: Container(
                              child: Image.asset(
                                  'assets/images/body_of_seb7a.png'),
                            ))),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Text(
                'counter',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFB7935F).withOpacity(.57)),
              child: Text(
                '$counter',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 10,
              ),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFFB7935F)),
              child: Text(
                tasbeh[index],
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }

  counterMethod() {
    angle += 50;
    if (counter == 33) {
      counter = 0;
      if (index < tasbeh.length - 1) {
        index++;
      } else {
        index = 0;
      }
    } else {
      counter++;
    }
    setState(() {});
  }
}
