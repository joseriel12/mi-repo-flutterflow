import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'story_coments_record.g.dart';

abstract class StoryComentsRecord
    implements Built<StoryComentsRecord, StoryComentsRecordBuilder> {
  static Serializer<StoryComentsRecord> get serializer =>
      _$storyComentsRecordSerializer;

  DocumentReference? get storyRelation;

  DocumentReference? get userRelation;

  String? get comentStory;

  DateTime? get fechaComents;

  @BuiltValueField(wireName: 'is_Aprobado')
  bool? get isAprobado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(StoryComentsRecordBuilder builder) => builder
    ..comentStory = ''
    ..isAprobado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Story_Coments');

  static Stream<StoryComentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<StoryComentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  StoryComentsRecord._();
  factory StoryComentsRecord(
          [void Function(StoryComentsRecordBuilder) updates]) =
      _$StoryComentsRecord;

  static StoryComentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createStoryComentsRecordData({
  DocumentReference? storyRelation,
  DocumentReference? userRelation,
  String? comentStory,
  DateTime? fechaComents,
  bool? isAprobado,
}) {
  final firestoreData = serializers.toFirestore(
    StoryComentsRecord.serializer,
    StoryComentsRecord(
      (s) => s
        ..storyRelation = storyRelation
        ..userRelation = userRelation
        ..comentStory = comentStory
        ..fechaComents = fechaComents
        ..isAprobado = isAprobado,
    ),
  );

  return firestoreData;
}
