import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/radio.png')),
          ),
          Text(
            'اذاعة القران الكريم',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(50),
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/Icon_radio_lift.png',
                        color: Theme.of(context).dividerColor,
                      ))),
              Container(
                  padding: EdgeInsets.all(50),
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset('assets/images/icon_radio_cinter.png',
                          color: Theme.of(context).dividerColor))),
              Container(
                  padding: EdgeInsets.all(50),
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset('assets/images/icon_radio_right.png',
                          color: Theme.of(context).dividerColor))),
            ],
          )
        ],
      ),
    );
  }
}
