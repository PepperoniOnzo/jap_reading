class DataModel {
  late String _shown, _hiden;

  String get shown => _shown.split('').join('\n');
  set shown(String shown) => _shown = shown;

  String get hiden => _hiden.split('').join('\n');
  set hiden(String hiden) => _hiden = hiden;

  DataModel(String sh, String hd) {
    shown = sh;
    hiden = hd;
  }
}
