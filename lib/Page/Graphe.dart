import 'package:flutter/material.dart';
import 'Account.dart';
import 'package:provider/provider.dart';
import 'Backend-State/Provider.dart';
import 'Mission.dart';

class MyGraphPage extends StatefulWidget {
  @override
  _MyGraphPageState createState() => _MyGraphPageState();
}

class _MyGraphPageState extends State<MyGraphPage> {
  Color myColorPrimary = Color.fromRGBO(23, 45, 71, 1);
  Color myColorSecondary = Color.fromRGBO(40, 71, 108, 0.8);
  Color myColorTertiary = Color.fromRGBO(8, 31, 58, 1);
  Color myColorIcon = Color.fromRGBO(0, 0, 0, 1);
  String font = 'Times New Roman';
  bool IsSelect = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
          child: Column(
        children: [
          SizedBox(height: 70),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 250, left: 12),
                decoration: BoxDecoration(
                  color: myColorSecondary,
                  borderRadius: BorderRadius.circular(
                      20.0), // Ajustez la valeur selon vos besoins
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyAccount()),
                    );
                    print('Icône cliquée !');
                  },
                  child: Icon(
                    Icons.credit_card,
                    color: myColorIcon,
                  ),
                ),
              ),
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  color: myColorSecondary,
                  borderRadius: BorderRadius.circular(
                      20.0), // Ajustez la valeur selon vos besoins
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyMission(),
                        ));
                    // Code à exécuter lors du clic sur l'icône
                    print('Icône cliquée !');
                  },
                  child: Icon(
                    Icons.toc_outlined,
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
          Row(children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: myColorTertiary,
                borderRadius: BorderRadius.circular(
                    40.0), // Ajustez la valeur selon vos besoins
              ),
              margin: const EdgeInsets.only(top: 16.0, left: 10, right: 10),
              child: Icon(
                Icons.abc,
                color: Colors.white,
                size: 80,
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("alphabet",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 25)),
                  ],
                ),
                Row(
                  children: [
                    Text("ABC",
                        style: TextStyle(
                            color: Color.fromARGB(148, 255, 255, 255),
                            fontFamily: font,
                            fontSize: 15)),
                  ],
                )
              ],
            ),
            SizedBox(width: 30),
            Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: myColorSecondary,
                  borderRadius: BorderRadius.circular(
                      20.0), // Ajustez la valeur selon vos besoins
                ),
                margin: const EdgeInsets.only(left: 127),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        IsSelect = !IsSelect;
                      });
                    },
                    child: Icon(
                      IsSelect ? Icons.favorite : Icons.favorite_border,
                    )))
          ]),
          Container(
            width: 391,
            height: 350,
            decoration: BoxDecoration(
              color: myColorTertiary,
              borderRadius: BorderRadius.circular(
                  20.0), // Ajustez la valeur selon vos besoins
            ),
            margin: const EdgeInsets.only(left: 2, top: 15),
            child: Text("Graph"),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Provider.of<IconDataModel>(context, listen: false)
                        .setSelectedIcon(Icons.abc);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: myColorSecondary,
                  ),
                  child: Text(
                    "+ BUY",
                    style: TextStyle(
                        fontFamily: font,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  )),
              SizedBox(width: 35),
              ElevatedButton(
                  onPressed: () {
                    Provider.of<IconDataModel>(context, listen: false)
                        .setSelectedIcon(Icons.abc);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: myColorSecondary,
                  ),
                  child: Text(
                    "- SELL",
                    style: TextStyle(
                        fontFamily: font,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ))
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 391,
                height: 350,
                decoration: BoxDecoration(
                  color: myColorTertiary,
                  borderRadius: BorderRadius.circular(
                      20.0), // Ajustez la valeur selon vos besoins
                ),
                margin: const EdgeInsets.only(left: 19, top: 15),
                child: Column(children: [
                  Text(
                    "Stat : ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: font,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]),
              ),
            ],
          )
        ],
      )),
    );
  }
}
