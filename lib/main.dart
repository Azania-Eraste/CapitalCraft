import 'package:capital_crafts/Page/Account.dart';
import 'package:capital_crafts/Page/Graphe.dart';
import 'package:capital_crafts/Page/Mission.dart';
import 'package:flutter/material.dart';
import 'Page/Login.dart';
import 'package:provider/provider.dart';
import 'Page/Backend-State/Provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => IconDataModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChecked = false;
  String font = 'Times New Roman';
  Color myColorPrimary = Color.fromRGBO(23, 45, 71, 1);
  Color myColorSecondary = Color.fromRGBO(40, 71, 108, 0.8);
  Color myColorTertiary = Color.fromRGBO(8, 31, 58, 1);
  Color myColorIcon = Color.fromRGBO(0, 0, 0, 1);

  int _currentPage = 0;

  setCurrentPage(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'CapitalCraft',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        color: Color.fromRGBO(8, 31, 58, 80),
        home: Scaffold(
          backgroundColor: myColorPrimary,
          body: [
            MyHomePage(),
            MyGraphPage(),
            MyAccount(),
            MyMission(),
          ][_currentPage],
          bottomNavigationBar: _currentPage != 0
              ? BottomNavigationBar(
                  onTap: (index) => setCurrentPage(index),
                  currentIndex: _currentPage,
                  selectedItemColor: myColorSecondary,
                  unselectedItemColor: myColorIcon,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.graphic_eq),
                      label: "Marché",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.credit_card),
                      label: "Compte",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.toc_outlined),
                      label: "Mission",
                    )
                  ],
                )
              : null,
        ));
  }
}
