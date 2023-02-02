import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'empresas_record.g.dart';

abstract class EmpresasRecord
    implements Built<EmpresasRecord, EmpresasRecordBuilder> {
  static Serializer<EmpresasRecord> get serializer =>
      _$empresasRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Icono')
  String? get icono;

  @BuiltValueField(wireName: 'URL')
  String? get url;

  @BuiltValueField(wireName: 'Descripsion')
  String? get descripsion;

  @BuiltValueField(wireName: 'id_Pais')
  DocumentReference? get idPais;

  @BuiltValueField(wireName: 'Estatus')
  bool? get estatus;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmpresasRecordBuilder builder) => builder
    ..nombre = ''
    ..icono = ''
    ..url = ''
    ..descripsion = ''
    ..estatus = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Empresas');

  static Stream<EmpresasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmpresasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmpresasRecord._();
  factory EmpresasRecord([void Function(EmpresasRecordBuilder) updates]) =
      _$EmpresasRecord;

  static EmpresasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmpresasRecordData({
  String? nombre,
  String? icono,
  String? url,
  String? descripsion,
  DocumentReference? idPais,
  bool? estatus,
}) {
  final firestoreData = serializers.toFirestore(
    EmpresasRecord.serializer,
    EmpresasRecord(
      (e) => e
        ..nombre = nombre
        ..icono = icono
        ..url = url
        ..descripsion = descripsion
        ..idPais = idPais
        ..estatus = estatus,
    ),
  );

  return firestoreData;
}
