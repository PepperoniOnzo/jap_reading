class DataModel {
  late String _shown, hiden;

  String get shown => _shown.split('').join('\n');
  set shown(String shown) => _shown = shown;

  DataModel(String sh, String hd) {
    shown = sh;
    hiden = hd;
  }
}
