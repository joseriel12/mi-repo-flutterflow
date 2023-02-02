import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_history_record.g.dart';

abstract class UserHistoryRecord
    implements Built<UserHistoryRecord, UserHistoryRecordBuilder> {
  static Serializer<UserHistoryRecord> get serializer =>
      _$userHistoryRecordSerializer;

  DocumentReference? get user;

  String? get historyPhoto;

  String? get historyDescripsion;

  @BuiltValueField(wireName: 'FechaHistory')
  DateTime? get fechaHistory;

  BuiltList<DocumentReference>? get meGustasHistory;

  bool? get isDueno;

  int? get numeroComentarios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserHistoryRecordBuilder builder) => builder
    ..historyPhoto = ''
    ..historyDescripsion = ''
    ..meGustasHistory = ListBuilder()
    ..isDueno = false
    ..numeroComentarios = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userHistory');

  static Stream<UserHistoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserHistoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserHistoryRecord._();
  factory UserHistoryRecord([void Function(UserHistoryRecordBuilder) updates]) =
      _$UserHistoryRecord;

  static UserHistoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserHistoryRecordData({
  DocumentReference? user,
  String? historyPhoto,
  String? historyDescripsion,
  DateTime? fechaHistory,
  bool? isDueno,
  int? numeroComentarios,
}) {
  final firestoreData = serializers.toFirestore(
    UserHistoryRecord.serializer,
    UserHistoryRecord(
      (u) => u
        ..user = user
        ..historyPhoto = historyPhoto
        ..historyDescripsion = historyDescripsion
        ..fechaHistory = fechaHistory
        ..meGustasHistory = null
        ..isDueno = isDueno
        ..numeroComentarios = numeroComentarios,
    ),
  );

  return firestoreData;
}
