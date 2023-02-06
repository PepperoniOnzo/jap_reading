import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jap_reading/data/configurations.dart';
import 'package:jap_reading/data/data_model.dart';
import 'package:jap_reading/services/generator.dart';

class MainView extends ChangeNotifier {
  late DataModel word;
  bool mode = false;
  double hiraganaToKatakanaCof = 0.5;

  ThemeMode themeMode = ThemeMode.dark;

  final Generator generator = Generator();
  final Random random = Random();

  MainView() {
    setNextWord();
  }

  void defaultMode() => mode = false;

  void changeMode() {
    mode = !mode;
    notifyListeners();
  }

  void setNextWord() {
    String shown = '', hiden = '';

    for (var i = 0; i < Configurations.maxWords; i++) {
      if (random.nextDouble() >= hiraganaToKatakanaCof) {
        generator
            .getHirigana(Configurations.maxLetters - random.nextInt(2))
            .forEach((key, value) {
          shown += '$key ';
          hiden += '$value\n';
        });
      } else {
        generator
            .getKatakana(Configurations.maxLetters - random.nextInt(2))
            .forEach((key, value) {
          shown += '$key ';
          hiden += '$value\n';
        });
      }
    }
    word = DataModel(shown, hiden);
  }

  void nextWord() {
    defaultMode();
    notifyListeners();

    Future.delayed(const Duration(seconds: 1)).then((value) {
      setNextWord();
      notifyListeners();
    });
  }

  void tap() => mode ? nextWord() : changeMode();

  void setThemeMode() {
    themeMode == ThemeMode.dark
        ? themeMode = ThemeMode.light
        : themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void setNewCof(double value) {
    hiraganaToKatakanaCof = value;
    notifyListeners();
  }
}
