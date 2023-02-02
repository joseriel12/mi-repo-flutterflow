import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'post_comentarios_record.g.dart';

abstract class PostComentariosRecord
    implements Built<PostComentariosRecord, PostComentariosRecordBuilder> {
  static Serializer<PostComentariosRecord> get serializer =>
      _$postComentariosRecordSerializer;

  @BuiltValueField(wireName: 'Fecha_Comentario')
  DateTime? get fechaComentario;

  @BuiltValueField(wireName: 'Descripsion_Comentario')
  String? get descripsionComentario;

  @BuiltValueField(wireName: 'User')
  DocumentReference? get user;

  @BuiltValueField(wireName: 'Duenos_Comentario')
  bool? get duenosComentario;

  @BuiltValueField(wireName: 'id_Post')
  DocumentReference? get idPost;

  @BuiltValueField(wireName: 'is_Aprobado')
  bool? get isAprobado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostComentariosRecordBuilder builder) =>
      builder
        ..descripsionComentario = ''
        ..duenosComentario = false
        ..isAprobado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Post_Comentarios');

  static Stream<PostComentariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostComentariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostComentariosRecord._();
  factory PostComentariosRecord(
          [void Function(PostComentariosRecordBuilder) updates]) =
      _$PostComentariosRecord;

  static PostComentariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostComentariosRecordData({
  DateTime? fechaComentario,
  String? descripsionComentario,
  DocumentReference? user,
  bool? duenosComentario,
  DocumentReference? idPost,
  bool? isAprobado,
}) {
  final firestoreData = serializers.toFirestore(
    PostComentariosRecord.serializer,
    PostComentariosRecord(
      (p) => p
        ..fechaComentario = fechaComentario
        ..descripsionComentario = descripsionComentario
        ..user = user
        ..duenosComentario = duenosComentario
        ..idPost = idPost
        ..isAprobado = isAprobado,
    ),
  );

  return firestoreData;
}
