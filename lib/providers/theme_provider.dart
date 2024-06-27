
import 'package:flutter/material.dart';

class ThemProvider extends ChangeNotifier {

  ThemeData currentTheme;

  ThemProvider({
    required bool isDarkmode
  }): currentTheme = isDarkmode ? ThemeData.dark() :ThemeData.light();

  setLightMode(){
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkmode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }


}

