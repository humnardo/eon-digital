import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    });
    _safeInit(() {
      _expiresAt = prefs.getInt('ff_expiresAt') ?? _expiresAt;
    });
    _safeInit(() {
      _refreshToken = prefs.getString('ff_refreshToken') ?? _refreshToken;
    });
    _safeInit(() {
      _idUsuariosTable = prefs.getInt('ff_idUsuariosTable') ?? _idUsuariosTable;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _menuDesktop = 'dashboard';
  String get menuDesktop => _menuDesktop;
  set menuDesktop(String value) {
    _menuDesktop = value;
  }

  String _valueFormatPreco = '';
  String get valueFormatPreco => _valueFormatPreco;
  set valueFormatPreco(String value) {
    _valueFormatPreco = value;
  }

  double _valueDoublePreco = 0.0;
  double get valueDoublePreco => _valueDoublePreco;
  set valueDoublePreco(double value) {
    _valueDoublePreco = value;
  }

  String _valueFormatcomissao = '';
  String get valueFormatcomissao => _valueFormatcomissao;
  set valueFormatcomissao(String value) {
    _valueFormatcomissao = value;
  }

  double _valueDoublecomissao = 0.0;
  double get valueDoublecomissao => _valueDoublecomissao;
  set valueDoublecomissao(double value) {
    _valueDoublecomissao = value;
  }

  List<int> _comissao = [];
  List<int> get comissao => _comissao;
  set comissao(List<int> value) {
    _comissao = value;
  }

  void addToComissao(int value) {
    comissao.add(value);
  }

  void removeFromComissao(int value) {
    comissao.remove(value);
  }

  void removeAtIndexFromComissao(int index) {
    comissao.removeAt(index);
  }

  void updateComissaoAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    comissao[index] = updateFn(_comissao[index]);
  }

  void insertAtIndexInComissao(int index, int value) {
    comissao.insert(index, value);
  }

  List<String> _dataEntrega = [];
  List<String> get dataEntrega => _dataEntrega;
  set dataEntrega(List<String> value) {
    _dataEntrega = value;
  }

  void addToDataEntrega(String value) {
    dataEntrega.add(value);
  }

  void removeFromDataEntrega(String value) {
    dataEntrega.remove(value);
  }

  void removeAtIndexFromDataEntrega(int index) {
    dataEntrega.removeAt(index);
  }

  void updateDataEntregaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dataEntrega[index] = updateFn(_dataEntrega[index]);
  }

  void insertAtIndexInDataEntrega(int index, String value) {
    dataEntrega.insert(index, value);
  }

  String _idUsuario = '';
  String get idUsuario => _idUsuario;
  set idUsuario(String value) {
    _idUsuario = value;
  }

  String _AlterarDados = '';
  String get AlterarDados => _AlterarDados;
  set AlterarDados(String value) {
    _AlterarDados = value;
  }

  String _tokenapi = '';
  String get tokenapi => _tokenapi;
  set tokenapi(String value) {
    _tokenapi = value;
  }

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String value) {
    _accessToken = value;
    prefs.setString('ff_accessToken', value);
  }

  int _expiresAt = 0;
  int get expiresAt => _expiresAt;
  set expiresAt(int value) {
    _expiresAt = value;
    prefs.setInt('ff_expiresAt', value);
  }

  String _refreshToken = '';
  String get refreshToken => _refreshToken;
  set refreshToken(String value) {
    _refreshToken = value;
    prefs.setString('ff_refreshToken', value);
  }

  int _idUsuariosTable = 0;
  int get idUsuariosTable => _idUsuariosTable;
  set idUsuariosTable(int value) {
    _idUsuariosTable = value;
    prefs.setInt('ff_idUsuariosTable', value);
  }

  List<String> _dataGrafico = [];
  List<String> get dataGrafico => _dataGrafico;
  set dataGrafico(List<String> value) {
    _dataGrafico = value;
  }

  void addToDataGrafico(String value) {
    dataGrafico.add(value);
  }

  void removeFromDataGrafico(String value) {
    dataGrafico.remove(value);
  }

  void removeAtIndexFromDataGrafico(int index) {
    dataGrafico.removeAt(index);
  }

  void updateDataGraficoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dataGrafico[index] = updateFn(_dataGrafico[index]);
  }

  void insertAtIndexInDataGrafico(int index, String value) {
    dataGrafico.insert(index, value);
  }

  String _fcmToken = '';
  String get fcmToken => _fcmToken;
  set fcmToken(String value) {
    _fcmToken = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
