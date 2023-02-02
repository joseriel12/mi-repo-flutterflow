import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'equipo_record.g.dart';

abstract class EquipoRecord
    implements Built<EquipoRecord, EquipoRecordBuilder> {
  static Serializer<EquipoRecord> get serializer => _$equipoRecordSerializer;

  @BuiltValueField(wireName: 'Foto')
  String? get foto;

  @BuiltValueField(wireName: 'Descripsion')
  String? get descripsion;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  Color? get color;

  Color? get color2;

  @BuiltValueField(wireName: 'ID_Pais')
  DocumentReference? get iDPais;

  @BuiltValueField(wireName: 'Estatus')
  bool? get estatus;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EquipoRecordBuilder builder) => builder
    ..foto = ''
    ..descripsion = ''
    ..nombre = ''
    ..estatus = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Equipo');

  static Stream<EquipoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EquipoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EquipoRecord._();
  factory EquipoRecord([void Function(EquipoRecordBuilder) updates]) =
      _$EquipoRecord;

  static EquipoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEquipoRecordData({
  String? foto,
  String? descripsion,
  String? nombre,
  Color? color,
  Color? color2,
  DocumentReference? iDPais,
  bool? estatus,
}) {
  final firestoreData = serializers.toFirestore(
    EquipoRecord.serializer,
    EquipoRecord(
      (e) => e
        ..foto = foto
        ..descripsion = descripsion
        ..nombre = nombre
        ..color = color
        ..color2 = color2
        ..iDPais = iDPais
        ..estatus = estatus,
    ),
  );

  return firestoreData;
}
