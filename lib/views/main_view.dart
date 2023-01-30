import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:jap_reading/data/configurations.dart';
import 'package:jap_reading/data/data_model.dart';
import 'package:jap_reading/services/generator.dart';

class MainView extends ChangeNotifier {
  late DataModel word;
  bool mode = false;

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
    bool choice;
    for (var i = 0; i < Configurations.maxWords; i++) {
      choice = random.nextBool();

      if (choice) {
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

  tap() => mode ? nextWord() : changeMode();
}
