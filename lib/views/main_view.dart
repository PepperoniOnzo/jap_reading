import 'package:flutter/cupertino.dart';
import 'package:jap_reading/data/data_model.dart';

class MainView extends ChangeNotifier {
  late DataModel word;
  bool mode = false;

  MainView() {
    getNextWord();
  }

  void defaultMode() => mode = false;

  void changeMode() => mode = !mode;

  void getNextWord() {
    word = DataModel('おはようございます', 'OHAYOGOZAIMASU');
    notifyListeners();
  }

  void nextWord() {
    defaultMode();
    notifyListeners();
  }
}
