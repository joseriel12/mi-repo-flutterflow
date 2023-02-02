import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'disclaimer_record.g.dart';

abstract class DisclaimerRecord
    implements Built<DisclaimerRecord, DisclaimerRecordBuilder> {
  static Serializer<DisclaimerRecord> get serializer =>
      _$disclaimerRecordSerializer;

  @BuiltValueField(wireName: 'Signature')
  String? get signature;

  @BuiltValueField(wireName: 'id_User')
  DocumentReference? get idUser;

  @BuiltValueField(wireName: 'Fecha')
  DateTime? get fecha;

  @BuiltValueField(wireName: 'id_Pip')
  DocumentReference? get idPip;

  @BuiltValueField(wireName: 'numero_identidad')
  int? get numeroIdentidad;

  @BuiltValueField(wireName: 'id_Patrocinador')
  DocumentReference? get idPatrocinador;

  @BuiltValueField(wireName: 'url_NegocioPatrocinado')
  String? get urlNegocioPatrocinado;

  @BuiltValueField(wireName: 'id_empresa')
  DocumentReference? get idEmpresa;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DisclaimerRecordBuilder builder) => builder
    ..signature = ''
    ..numeroIdentidad = 0
    ..urlNegocioPatrocinado = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Disclaimer');

  static Stream<DisclaimerRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DisclaimerRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DisclaimerRecord._();
  factory DisclaimerRecord([void Function(DisclaimerRecordBuilder) updates]) =
      _$DisclaimerRecord;

  static DisclaimerRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDisclaimerRecordData({
  String? signature,
  DocumentReference? idUser,
  DateTime? fecha,
  DocumentReference? idPip,
  int? numeroIdentidad,
  DocumentReference? idPatrocinador,
  String? urlNegocioPatrocinado,
  DocumentReference? idEmpresa,
}) {
  final firestoreData = serializers.toFirestore(
    DisclaimerRecord.serializer,
    DisclaimerRecord(
      (d) => d
        ..signature = signature
        ..idUser = idUser
        ..fecha = fecha
        ..idPip = idPip
        ..numeroIdentidad = numeroIdentidad
        ..idPatrocinador = idPatrocinador
        ..urlNegocioPatrocinado = urlNegocioPatrocinado
        ..idEmpresa = idEmpresa,
    ),
  );

  return firestoreData;
}
