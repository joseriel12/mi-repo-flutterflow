import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_post_record.g.dart';

abstract class UserPostRecord
    implements Built<UserPostRecord, UserPostRecordBuilder> {
  static Serializer<UserPostRecord> get serializer =>
      _$userPostRecordSerializer;

  @BuiltValueField(wireName: 'post_photo')
  String? get postPhoto;

  @BuiltValueField(wireName: 'post_title')
  String? get postTitle;

  @BuiltValueField(wireName: 'post_description')
  String? get postDescription;

  @BuiltValueField(wireName: 'time_posted')
  DateTime? get timePosted;

  @BuiltValueField(wireName: 'num_comments')
  int? get numComments;

  @BuiltValueField(wireName: 'Dueno_Post')
  bool? get duenoPost;

  BuiltList<DocumentReference>? get likes;

  DocumentReference? get postUser;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserPostRecordBuilder builder) => builder
    ..postPhoto = ''
    ..postTitle = ''
    ..postDescription = ''
    ..numComments = 0
    ..duenoPost = false
    ..likes = ListBuilder()
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('UserPost');

  static Stream<UserPostRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserPostRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserPostRecord._();
  factory UserPostRecord([void Function(UserPostRecordBuilder) updates]) =
      _$UserPostRecord;

  static UserPostRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserPostRecordData({
  String? postPhoto,
  String? postTitle,
  String? postDescription,
  DateTime? timePosted,
  int? numComments,
  bool? duenoPost,
  DocumentReference? postUser,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    UserPostRecord.serializer,
    UserPostRecord(
      (u) => u
        ..postPhoto = postPhoto
        ..postTitle = postTitle
        ..postDescription = postDescription
        ..timePosted = timePosted
        ..numComments = numComments
        ..duenoPost = duenoPost
        ..likes = null
        ..postUser = postUser
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
