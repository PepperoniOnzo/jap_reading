import 'dart:math';
import 'package:jap_reading/data/letters.dart';

class Generator {
  final Random random = Random();
  final _maxHirigana = Letters.hiragana.length;
  final _maxKatakana = Letters.katakana.length;

  Map<String, String> getHirigana(int count) {
    String shown = '', hiden = '';
    int numb;
    for (var i = 0; i < count; i++) {
      numb = random.nextInt(_maxHirigana);
      shown += Letters.hiragana.values.elementAt(numb);
      hiden += '${Letters.hiragana.keys.elementAt(numb)}\n';
    }

    return {shown: hiden.toUpperCase()};
  }

  Map<String, String> getKatakana(int count) {
    String shown = '', hiden = '';
    int numb;
    for (var i = 0; i < count; i++) {
      numb = random.nextInt(_maxKatakana);
      shown += Letters.katakana.values.elementAt(numb);
      hiden += '${Letters.katakana.keys.elementAt(numb)}\n';
    }

    return {shown: hiden.toUpperCase()};
  }
}
