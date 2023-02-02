import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _listaCitas = (await secureStorage.getStringList('ff_listaCitas'))
            ?.map((x) => DateTime.fromMillisecondsSinceEpoch(int.parse(x)))
            .toList() ??
        _listaCitas;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _SubirFotoperfil = '';
  String get SubirFotoperfil => _SubirFotoperfil;
  set SubirFotoperfil(String _value) {
    _SubirFotoperfil = _value;
  }

  String _subirFotoPortada = '';
  String get subirFotoPortada => _subirFotoPortada;
  set subirFotoPortada(String _value) {
    _subirFotoPortada = _value;
  }

  String _SubirPhotoPost = '';
  String get SubirPhotoPost => _SubirPhotoPost;
  set SubirPhotoPost(String _value) {
    _SubirPhotoPost = _value;
  }

  bool _VisibilidadConfiguraciones = false;
  bool get VisibilidadConfiguraciones => _VisibilidadConfiguraciones;
  set VisibilidadConfiguraciones(bool _value) {
    _VisibilidadConfiguraciones = _value;
  }

  bool _visibilidadUserChat = false;
  bool get visibilidadUserChat => _visibilidadUserChat;
  set visibilidadUserChat(bool _value) {
    _visibilidadUserChat = _value;
  }

  String _ImagenZoomDisenaThor = '';
  String get ImagenZoomDisenaThor => _ImagenZoomDisenaThor;
  set ImagenZoomDisenaThor(String _value) {
    _ImagenZoomDisenaThor = _value;
  }

  bool _VisibilidadLenguage = false;
  bool get VisibilidadLenguage => _VisibilidadLenguage;
  set VisibilidadLenguage(bool _value) {
    _VisibilidadLenguage = _value;
  }

  String _fotofrontal = '';
  String get fotofrontal => _fotofrontal;
  set fotofrontal(String _value) {
    _fotofrontal = _value;
  }

  String _fotoReverso = '';
  String get fotoReverso => _fotoReverso;
  set fotoReverso(String _value) {
    _fotoReverso = _value;
  }

  String _FotoSelfi = '';
  String get FotoSelfi => _FotoSelfi;
  set FotoSelfi(String _value) {
    _FotoSelfi = _value;
  }

  bool _visibilidadModad = false;
  bool get visibilidadModad => _visibilidadModad;
  set visibilidadModad(bool _value) {
    _visibilidadModad = _value;
  }

  DocumentReference? _EmpresaID =
      FirebaseFirestore.instance.doc('/Empresas/xKZiiACQ1oYAV0kHhAM8');
  DocumentReference? get EmpresaID => _EmpresaID;
  set EmpresaID(DocumentReference? _value) {
    _EmpresaID = _value;
  }

  String _horaElegida = '';
  String get horaElegida => _horaElegida;
  set horaElegida(String _value) {
    _horaElegida = _value;
  }

  List<DateTime> _listaCitas = [];
  List<DateTime> get listaCitas => _listaCitas;
  set listaCitas(List<DateTime> _value) {
    _listaCitas = _value;
    secureStorage.setStringList('ff_listaCitas',
        _value.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void deleteListaCitas() {
    secureStorage.delete(key: 'ff_listaCitas');
  }

  void addToListaCitas(DateTime _value) {
    _listaCitas.add(_value);
    secureStorage.setStringList('ff_listaCitas',
        _listaCitas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  void removeFromListaCitas(DateTime _value) {
    _listaCitas.remove(_value);
    secureStorage.setStringList('ff_listaCitas',
        _listaCitas.map((x) => x.millisecondsSinceEpoch.toString()).toList());
  }

  String _urlNegocioReferido = '';
  String get urlNegocioReferido => _urlNegocioReferido;
  set urlNegocioReferido(String _value) {
    _urlNegocioReferido = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
