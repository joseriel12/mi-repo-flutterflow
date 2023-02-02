import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'datos_verificacion_record.g.dart';

abstract class DatosVerificacionRecord
    implements Built<DatosVerificacionRecord, DatosVerificacionRecordBuilder> {
  static Serializer<DatosVerificacionRecord> get serializer =>
      _$datosVerificacionRecordSerializer;

  DocumentReference? get idUser;

  @BuiltValueField(wireName: 'Nacionalidad')
  String? get nacionalidad;

  @BuiltValueField(wireName: 'NumeroID')
  int? get numeroID;

  @BuiltValueField(wireName: 'TipoDocumento')
  String? get tipoDocumento;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'FotoFrontal')
  String? get fotoFrontal;

  @BuiltValueField(wireName: 'FotoReverso')
  String? get fotoReverso;

  @BuiltValueField(wireName: 'FotoSelfi')
  String? get fotoSelfi;

  @BuiltValueField(wireName: 'FechaEnviado')
  DateTime? get fechaEnviado;

  @BuiltValueField(wireName: 'NombreCompleto')
  String? get nombreCompleto;

  @BuiltValueField(wireName: 'EstadoFotoFrontal')
  bool? get estadoFotoFrontal;

  @BuiltValueField(wireName: 'EstadoFotoReverso')
  bool? get estadoFotoReverso;

  @BuiltValueField(wireName: 'EstadoFotoSelfi')
  bool? get estadoFotoSelfi;

  @BuiltValueField(wireName: 'Comentarios')
  String? get comentarios;

  @BuiltValueField(wireName: 'Nuevas')
  bool? get nuevas;

  @BuiltValueField(wireName: 'Aprobados')
  bool? get aprobados;

  @BuiltValueField(wireName: 'Rechazados')
  bool? get rechazados;

  @BuiltValueField(wireName: 'ID_Pais')
  DocumentReference? get iDPais;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatosVerificacionRecordBuilder builder) =>
      builder
        ..nacionalidad = ''
        ..numeroID = 0
        ..tipoDocumento = ''
        ..direccion = ''
        ..fotoFrontal = ''
        ..fotoReverso = ''
        ..fotoSelfi = ''
        ..nombreCompleto = ''
        ..estadoFotoFrontal = false
        ..estadoFotoReverso = false
        ..estadoFotoSelfi = false
        ..comentarios = ''
        ..nuevas = false
        ..aprobados = false
        ..rechazados = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DatosVerificacion');

  static Stream<DatosVerificacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatosVerificacionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatosVerificacionRecord._();
  factory DatosVerificacionRecord(
          [void Function(DatosVerificacionRecordBuilder) updates]) =
      _$DatosVerificacionRecord;

  static DatosVerificacionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatosVerificacionRecordData({
  DocumentReference? idUser,
  String? nacionalidad,
  int? numeroID,
  String? tipoDocumento,
  String? direccion,
  String? fotoFrontal,
  String? fotoReverso,
  String? fotoSelfi,
  DateTime? fechaEnviado,
  String? nombreCompleto,
  bool? estadoFotoFrontal,
  bool? estadoFotoReverso,
  bool? estadoFotoSelfi,
  String? comentarios,
  bool? nuevas,
  bool? aprobados,
  bool? rechazados,
  DocumentReference? iDPais,
}) {
  final firestoreData = serializers.toFirestore(
    DatosVerificacionRecord.serializer,
    DatosVerificacionRecord(
      (d) => d
        ..idUser = idUser
        ..nacionalidad = nacionalidad
        ..numeroID = numeroID
        ..tipoDocumento = tipoDocumento
        ..direccion = direccion
        ..fotoFrontal = fotoFrontal
        ..fotoReverso = fotoReverso
        ..fotoSelfi = fotoSelfi
        ..fechaEnviado = fechaEnviado
        ..nombreCompleto = nombreCompleto
        ..estadoFotoFrontal = estadoFotoFrontal
        ..estadoFotoReverso = estadoFotoReverso
        ..estadoFotoSelfi = estadoFotoSelfi
        ..comentarios = comentarios
        ..nuevas = nuevas
        ..aprobados = aprobados
        ..rechazados = rechazados
        ..iDPais = iDPais,
    ),
  );

  return firestoreData;
}
