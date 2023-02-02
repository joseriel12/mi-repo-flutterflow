import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prospectos_record.g.dart';

abstract class ProspectosRecord
    implements Built<ProspectosRecord, ProspectosRecordBuilder> {
  static Serializer<ProspectosRecord> get serializer =>
      _$prospectosRecordSerializer;

  @BuiltValueField(wireName: 'id_user')
  DocumentReference? get idUser;

  @BuiltValueField(wireName: 'id_pip')
  DocumentReference? get idPip;

  @BuiltValueField(wireName: 'id_pais')
  DocumentReference? get idPais;

  @BuiltValueField(wireName: 'id_disclaimer')
  DocumentReference? get idDisclaimer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProspectosRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Prospectos');

  static Stream<ProspectosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProspectosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProspectosRecord._();
  factory ProspectosRecord([void Function(ProspectosRecordBuilder) updates]) =
      _$ProspectosRecord;

  static ProspectosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProspectosRecordData({
  DocumentReference? idUser,
  DocumentReference? idPip,
  DocumentReference? idPais,
  DocumentReference? idDisclaimer,
}) {
  final firestoreData = serializers.toFirestore(
    ProspectosRecord.serializer,
    ProspectosRecord(
      (p) => p
        ..idUser = idUser
        ..idPip = idPip
        ..idPais = idPais
        ..idDisclaimer = idDisclaimer,
    ),
  );

  return firestoreData;
}
