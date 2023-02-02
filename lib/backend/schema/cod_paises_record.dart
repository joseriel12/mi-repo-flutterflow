import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cod_paises_record.g.dart';

abstract class CodPaisesRecord
    implements Built<CodPaisesRecord, CodPaisesRecordBuilder> {
  static Serializer<CodPaisesRecord> get serializer =>
      _$codPaisesRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  int? get cod;

  String? get icono;

  String? get pais;

  @BuiltValueField(wireName: 'name_money')
  String? get nameMoney;

  @BuiltValueField(wireName: 'iso_money')
  String? get isoMoney;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CodPaisesRecordBuilder builder) => builder
    ..nombre = ''
    ..cod = 0
    ..icono = ''
    ..pais = ''
    ..nameMoney = ''
    ..isoMoney = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CodPaises');

  static Stream<CodPaisesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CodPaisesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CodPaisesRecord._();
  factory CodPaisesRecord([void Function(CodPaisesRecordBuilder) updates]) =
      _$CodPaisesRecord;

  static CodPaisesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCodPaisesRecordData({
  String? nombre,
  int? cod,
  String? icono,
  String? pais,
  String? nameMoney,
  String? isoMoney,
}) {
  final firestoreData = serializers.toFirestore(
    CodPaisesRecord.serializer,
    CodPaisesRecord(
      (c) => c
        ..nombre = nombre
        ..cod = cod
        ..icono = icono
        ..pais = pais
        ..nameMoney = nameMoney
        ..isoMoney = isoMoney,
    ),
  );

  return firestoreData;
}
