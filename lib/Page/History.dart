import 'package:flutter/material.dart';

class MyHistory extends StatefulWidget {
  @override
  _MyHistory createState() => _MyHistory();
}

class _MyHistory extends State<MyHistory> {
  Color myColorPrimary = Color.fromRGBO(23, 45, 71, 1);
  Color myColorSecondary = Color.fromRGBO(40, 71, 108, 0.8);
  Color myColorTertiary = Color.fromRGBO(8, 31, 58, 1);
  Color myColorIcon = Color.fromRGBO(0, 0, 0, 1);
  Color myVisa = Color.fromRGBO(24, 31, 40, 1);
  Color myText = Color.fromRGBO(255, 255, 255, 0.5);
  String font = 'Times New Roman';
  String MoneyFont = 'SunFlower';
  String? selectedValue = 'Day';
  double size = 11;
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
                decoration: BoxDecoration(
                    border: Border.all(color: myColorSecondary, width: 2),
                    borderRadius: BorderRadius.circular(50)),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    style: TextStyle(color: Colors.white, fontFamily: font),
                    value: selectedValue, // current selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue = newValue; // update the selected value
                      });
                    },
                    items: <String>['Day', 'Week', 'Month', 'Year']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value, // value of the dropdown item
                        child: Text(
                          value,
                          style: TextStyle(
                              fontFamily: font, fontWeight: FontWeight.bold),
                        ), // display text of the dropdown item
                      );
                    }).toList(),
                  ),
                ))
          ],
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Row(
                children: [
                  Text(
                    "Depences total :",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, fontFamily: font),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Row(
                children: [
                  Text(
                    "900§",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontFamily: MoneyFont,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  children: [
                    Text(
                      "February",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "March",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "April",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "May",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "June",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "July",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "August",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "September",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "October",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "November",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "December",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Jannuary",
                      style: TextStyle(
                          color: myText,
                          fontFamily: font,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 130, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 130, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "01",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 150, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 110, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "02",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 30, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 230, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "03",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 60, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 200, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "04",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 210, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 50, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "05",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 60, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 200, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "06",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 190, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 70, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "07",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 180, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 80, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "08",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 230, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 30, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "09",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 110, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 150, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 60, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 200, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "11",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 160, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 100, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Container(
                      width: 25,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: myColorSecondary),
                      child: Text(
                        "12",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: font,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 130, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 130, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "13",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                ),
                SizedBox(width: 15),
                Column(
                  children: [
                    Container(
                      width: 10,
                      height: 80, // Hauteur de la ligne
                      // Couleur de la ligne
                      margin: EdgeInsets.symmetric(vertical: 3),
                      decoration: BoxDecoration(
                          color: myColorSecondary,
                          borderRadius: BorderRadius.circular(10)),
                      // Marge verticale
                    ),
                    Container(
                      width: 10,
                      height: 180, // Hauteur de la ligne

                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(10)), // Couleur de la ligne
                      margin:
                          EdgeInsets.symmetric(vertical: 3), // Marge verticale
                    ),
                    Text(
                      "14",
                      style: TextStyle(
                          color: myText, fontFamily: font, fontSize: size),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 380,
              height: 450,
              decoration: BoxDecoration(
                  color: myColorTertiary,
                  borderRadius: BorderRadius.circular(25)),
              child: Expanded(
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          "Transaction : ",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: font,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 27),
                        width: 50,
                        height: 90,
                        decoration: BoxDecoration(
                            color: myColorSecondary,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: myColorTertiary,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Icon(
                            Icons.facebook,
                            color: myColorPrimary,
                          )),
                        )),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Meta",
                                style: TextStyle(
                                    color: myText,
                                    fontFamily: font,
                                    fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gain",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "500§",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: MoneyFont,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 27),
                        width: 50,
                        height: 90,
                        decoration: BoxDecoration(
                            color: myColorSecondary,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: myColorTertiary,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Icon(
                            Icons.facebook,
                            color: myColorPrimary,
                          )),
                        )),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Meta",
                                style: TextStyle(
                                    color: myText,
                                    fontFamily: font,
                                    fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gain",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "500§",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: MoneyFont,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 27),
                        width: 50,
                        height: 90,
                        decoration: BoxDecoration(
                            color: myColorSecondary,
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                            child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: myColorTertiary,
                              borderRadius: BorderRadius.circular(40)),
                          child: Center(
                              child: Icon(
                            Icons.facebook,
                            color: myColorPrimary,
                          )),
                        )),
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Facebook",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Meta",
                                style: TextStyle(
                                    color: myText,
                                    fontFamily: font,
                                    fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 110),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gain",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: font,
                                    fontSize: 20),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "500§",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: MoneyFont,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
              ),
            )
          ],
        ),
      ],
    ));
  }
}
