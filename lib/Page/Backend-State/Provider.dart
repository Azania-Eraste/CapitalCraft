import 'package:flutter/material.dart';

class IconDataModel extends ChangeNotifier {
  IconData? selectedIcon;

  void setSelectedIcon(IconData icon) {
    selectedIcon = icon;
    notifyListeners();
  }
}
