import 'package:flutter/material.dart';

class MyDetailMission extends StatefulWidget {
  @override
  _MyDetailMission createState() => _MyDetailMission();
}

class _MyDetailMission extends State<MyDetailMission> {
  Color myColorPrimary = Color.fromRGBO(23, 45, 71, 1);
  Color myColorSecondary = Color.fromRGBO(40, 71, 108, 0.8);
  Color myColorTertiary = Color.fromRGBO(8, 31, 58, 1);
  Color myColorIcon = Color.fromRGBO(0, 0, 0, 1);
  String font = 'Times New Roman';
  bool IsSelect = false;
  Color myText = Color.fromRGBO(255, 255, 255, 0.5);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
            child: Column(children: [
      SizedBox(height: 70),
      Row(
        children: [
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(right: 325, left: 12),
            decoration: BoxDecoration(
              color: myColorSecondary,
              borderRadius: BorderRadius.circular(
                  20.0), // Ajustez la valeur selon vos besoins
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
                print('Icône cliquée !');
              },
              child: Icon(
                Icons.arrow_back,
                color: myColorIcon,
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: myColorSecondary,
              borderRadius: BorderRadius.circular(
                  20.0), // Ajustez la valeur selon vos besoins
            ),
            child: GestureDetector(
              onTap: () {
                // Code à exécuter lors du clic sur l'icône
                print('Icône cliquée !');
              },
              child: Icon(
                Icons.account_box,
                color: myColorIcon,
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 20),
      Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: myColorTertiary),
            margin: EdgeInsets.only(left: 20, top: 15),
            height: 80,
            width: 80,
            child: Icon(Icons.network_wifi_outlined),
          )
        ]),
        SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "WIFI",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        )
      ])
    ])));
  }
}
