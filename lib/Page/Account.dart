import 'package:flutter/material.dart';
import 'History.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  Color myColorPrimary = Color.fromRGBO(23, 45, 71, 1);
  Color myColorSecondary = Color.fromRGBO(40, 71, 108, 0.8);
  Color myColorTertiary = Color.fromRGBO(8, 31, 58, 1);
  Color myColorIcon = Color.fromRGBO(0, 0, 0, 1);
  Color myVisa = Color.fromRGBO(24, 31, 40, 1);
  Color myText = Color.fromRGBO(255, 255, 255, 0.5);
  String font = 'Times New Roman';
  String MoneyFont = 'SunFlower';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                color: myColorSecondary,
                borderRadius: BorderRadius.circular(
                    20.0), // Ajustez la valeur selon vos besoins
              ),
              child: GestureDetector(
                onTap: () {
                  print('Icône cliquée !');
                },
                child: Icon(Icons.auto_graph, color: myColorIcon),
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
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              margin: EdgeInsets.only(left: 365, top: 20),
              decoration: BoxDecoration(
                color: myColorSecondary,
                borderRadius: BorderRadius.circular(
                    20.0), // Ajustez la valeur selon vos besoins
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHistory()),
                  );
                  print('Icône cliquée !');
                },
                child: Icon(
                  Icons.history,
                  color: myColorIcon,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 391,
              height: 230,
              margin: EdgeInsets.only(left: 20, top: 20),
              decoration: BoxDecoration(
                color: myVisa,
                borderRadius: BorderRadius.circular(
                    20.0), // Ajustez la valeur selon vos besoins
              ),
              child: Column(children: [
                SizedBox(height: 15),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text("Numéro de carte",
                        style: TextStyle(
                            fontFamily: font,
                            color: Colors.white,
                            fontSize: 15)),
                    SizedBox(width: 200),
                    Text("VISA",
                        style: TextStyle(
                            fontFamily: font,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                  ],
                ),
                SizedBox(height: 100),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "Mon solde:",
                          style: TextStyle(
                            color: myText,
                            fontFamily: font,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Text(
                          "250.000§",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontFamily: MoneyFont,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 340),
                        Text(
                          "04/25",
                          style: TextStyle(
                              color: myText,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )
              ]),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(height: 130),
            Column(
              children: [
                SizedBox(width: 180),
                Row(
                  children: [
                    Text(
                      "Budget : ",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "5000§",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: MoneyFont,
                          fontSize: 30),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(width: 15),
            Container(
              height: 100,
              width: 3,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(width: 45),
            Column(
              children: [
                SizedBox(width: 130),
                Row(
                  children: [
                    Text(
                      "Invest : ",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "45000§",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: MoneyFont,
                          fontSize: 30),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: myColorSecondary,
          ),
          margin: EdgeInsets.only(top: 20),
          height: 110,
          width: 410,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: myColorTertiary),
                  margin: EdgeInsets.only(left: 20, top: 15),
                  height: 80,
                  width: 80,
                  child: Icon(Icons.network_wifi_outlined),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "WIFI",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Buy :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sell :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 170),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Gain :",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1500§",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 25),
                    )
                  ],
                )
              ]),
            )
          ]),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: myColorSecondary,
          ),
          margin: EdgeInsets.only(top: 20),
          height: 110,
          width: 410,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: myColorTertiary),
                  margin: EdgeInsets.only(left: 20, top: 15),
                  height: 80,
                  width: 80,
                  child: Icon(Icons.network_wifi_outlined),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "WIFI",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Buy :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sell :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 170),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Gain :",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1500§",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 25),
                    )
                  ],
                )
              ]),
            )
          ]),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: myColorSecondary,
          ),
          margin: EdgeInsets.only(top: 20),
          height: 110,
          width: 410,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: myColorTertiary),
                  margin: EdgeInsets.only(left: 20, top: 15),
                  height: 80,
                  width: 80,
                  child: Icon(Icons.network_wifi_outlined),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "WIFI",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Buy :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sell :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 170),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Gain :",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1500§",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 25),
                    )
                  ],
                )
              ]),
            )
          ]),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: myColorSecondary,
          ),
          margin: EdgeInsets.only(top: 20),
          height: 110,
          width: 410,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: myColorTertiary),
                  margin: EdgeInsets.only(left: 20, top: 15),
                  height: 80,
                  width: 80,
                  child: Icon(Icons.network_wifi_outlined),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 5),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "WIFI",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Buy :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Sell :",
                        style: TextStyle(
                            color: myText, fontFamily: font, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 170),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Gain :",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 15),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "1500§",
                      style: TextStyle(
                          color: Colors.white, fontFamily: font, fontSize: 25),
                    )
                  ],
                )
              ]),
            )
          ]),
        )
      ],
    ));
  }
}
