import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'solicitudes_d_n_t_record.g.dart';

abstract class SolicitudesDNTRecord
    implements Built<SolicitudesDNTRecord, SolicitudesDNTRecordBuilder> {
  static Serializer<SolicitudesDNTRecord> get serializer =>
      _$solicitudesDNTRecordSerializer;

  @BuiltValueField(wireName: 'id_User')
  DocumentReference? get idUser;

  @BuiltValueField(wireName: 'usuario_empresa')
  String? get usuarioEmpresa;

  @BuiltValueField(wireName: 'id_empresa')
  DocumentReference? get idEmpresa;

  @BuiltValueField(wireName: 'fecha_registro')
  DateTime? get fechaRegistro;

  @BuiltValueField(wireName: 'Estado')
  bool? get estado;

  @BuiltValueField(wireName: 'url_referido')
  String? get urlReferido;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SolicitudesDNTRecordBuilder builder) => builder
    ..usuarioEmpresa = ''
    ..estado = false
    ..urlReferido = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SolicitudesDNT');

  static Stream<SolicitudesDNTRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SolicitudesDNTRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SolicitudesDNTRecord._();
  factory SolicitudesDNTRecord(
          [void Function(SolicitudesDNTRecordBuilder) updates]) =
      _$SolicitudesDNTRecord;

  static SolicitudesDNTRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSolicitudesDNTRecordData({
  DocumentReference? idUser,
  String? usuarioEmpresa,
  DocumentReference? idEmpresa,
  DateTime? fechaRegistro,
  bool? estado,
  String? urlReferido,
}) {
  final firestoreData = serializers.toFirestore(
    SolicitudesDNTRecord.serializer,
    SolicitudesDNTRecord(
      (s) => s
        ..idUser = idUser
        ..usuarioEmpresa = usuarioEmpresa
        ..idEmpresa = idEmpresa
        ..fechaRegistro = fechaRegistro
        ..estado = estado
        ..urlReferido = urlReferido,
    ),
  );

  return firestoreData;
}
