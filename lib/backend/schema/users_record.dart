import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'foto_portada')
  String? get fotoPortada;

  bool? get isTeamDNT;

  bool? get isComerciante;

  bool? get isRepresentante;

  bool? get isAdmin;

  @BuiltValueField(wireName: 'Seguidores')
  BuiltList<DocumentReference>? get seguidores;

  @BuiltValueField(wireName: 'Pais_Prefijo')
  String? get paisPrefijo;

  @BuiltValueField(wireName: 'Numero_WhatsApp')
  String? get numeroWhatsApp;

  String? get uid;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'UsuarioVerificado')
  bool? get usuarioVerificado;

  @BuiltValueField(wireName: 'FirmaSignature')
  bool? get firmaSignature;

  @BuiltValueField(wireName: 'numero_Referidos')
  int? get numeroReferidos;

  @BuiltValueField(wireName: 'ID_Pais')
  DocumentReference? get iDPais;

  String? get nameUser;

  String? get email;

  bool? get envioVerificacin;

  @BuiltValueField(wireName: 'id_Disclaimer')
  DocumentReference? get idDisclaimer;

  @BuiltValueField(wireName: 'envio_Solicitud_Acceso')
  bool? get envioSolicitudAcceso;

  @BuiltValueField(wireName: 'id_Patrocinador')
  DocumentReference? get idPatrocinador;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..photoUrl = ''
    ..fotoPortada = ''
    ..isTeamDNT = false
    ..isComerciante = false
    ..isRepresentante = false
    ..isAdmin = false
    ..seguidores = ListBuilder()
    ..paisPrefijo = ''
    ..numeroWhatsApp = ''
    ..uid = ''
    ..phoneNumber = ''
    ..usuarioVerificado = false
    ..firmaSignature = false
    ..numeroReferidos = 0
    ..nameUser = ''
    ..email = ''
    ..envioVerificacin = false
    ..envioSolicitudAcceso = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? fotoPortada,
  bool? isTeamDNT,
  bool? isComerciante,
  bool? isRepresentante,
  bool? isAdmin,
  String? paisPrefijo,
  String? numeroWhatsApp,
  String? uid,
  String? phoneNumber,
  bool? usuarioVerificado,
  bool? firmaSignature,
  int? numeroReferidos,
  DocumentReference? iDPais,
  String? nameUser,
  String? email,
  bool? envioVerificacin,
  DocumentReference? idDisclaimer,
  bool? envioSolicitudAcceso,
  DocumentReference? idPatrocinador,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..fotoPortada = fotoPortada
        ..isTeamDNT = isTeamDNT
        ..isComerciante = isComerciante
        ..isRepresentante = isRepresentante
        ..isAdmin = isAdmin
        ..seguidores = null
        ..paisPrefijo = paisPrefijo
        ..numeroWhatsApp = numeroWhatsApp
        ..uid = uid
        ..phoneNumber = phoneNumber
        ..usuarioVerificado = usuarioVerificado
        ..firmaSignature = firmaSignature
        ..numeroReferidos = numeroReferidos
        ..iDPais = iDPais
        ..nameUser = nameUser
        ..email = email
        ..envioVerificacin = envioVerificacin
        ..idDisclaimer = idDisclaimer
        ..envioSolicitudAcceso = envioSolicitudAcceso
        ..idPatrocinador = idPatrocinador,
    ),
  );

  return firestoreData;
}
