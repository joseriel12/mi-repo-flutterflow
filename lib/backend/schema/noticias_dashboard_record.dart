import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'noticias_dashboard_record.g.dart';

abstract class NoticiasDashboardRecord
    implements Built<NoticiasDashboardRecord, NoticiasDashboardRecordBuilder> {
  static Serializer<NoticiasDashboardRecord> get serializer =>
      _$noticiasDashboardRecordSerializer;

  String? get imagen;

  @BuiltValueField(wireName: 'Titulo')
  String? get titulo;

  @BuiltValueField(wireName: 'Descripsion')
  String? get descripsion;

  @BuiltValueField(wireName: 'Color01')
  Color? get color01;

  @BuiltValueField(wireName: 'Color02')
  Color? get color02;

  @BuiltValueField(wireName: 'Estatus')
  bool? get estatus;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NoticiasDashboardRecordBuilder builder) =>
      builder
        ..imagen = ''
        ..titulo = ''
        ..descripsion = ''
        ..estatus = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('NoticiasDashboard');

  static Stream<NoticiasDashboardRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NoticiasDashboardRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NoticiasDashboardRecord._();
  factory NoticiasDashboardRecord(
          [void Function(NoticiasDashboardRecordBuilder) updates]) =
      _$NoticiasDashboardRecord;

  static NoticiasDashboardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNoticiasDashboardRecordData({
  String? imagen,
  String? titulo,
  String? descripsion,
  Color? color01,
  Color? color02,
  bool? estatus,
}) {
  final firestoreData = serializers.toFirestore(
    NoticiasDashboardRecord.serializer,
    NoticiasDashboardRecord(
      (n) => n
        ..imagen = imagen
        ..titulo = titulo
        ..descripsion = descripsion
        ..color01 = color01
        ..color02 = color02
        ..estatus = estatus,
    ),
  );

  return firestoreData;
}
