import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pip_record.g.dart';

abstract class PipRecord implements Built<PipRecord, PipRecordBuilder> {
  static Serializer<PipRecord> get serializer => _$pipRecordSerializer;

  bool? get isDueno;

  @BuiltValueField(wireName: 'id_User')
  DocumentReference? get idUser;

  @BuiltValueField(wireName: 'Fecha_Registro')
  DateTime? get fechaRegistro;

  @BuiltValueField(wireName: 'Titulo')
  String? get titulo;

  @BuiltValueField(wireName: 'Direcion_URL')
  String? get direcionURL;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'url_del_Negocio')
  String? get urlDelNegocio;

  @BuiltValueField(wireName: 'Facebook')
  String? get facebook;

  @BuiltValueField(wireName: 'Instagram')
  String? get instagram;

  @BuiltValueField(wireName: 'WhatsApp')
  String? get whatsApp;

  @BuiltValueField(wireName: 'Telegram')
  String? get telegram;

  @BuiltValueField(wireName: 'Nombre_dueno')
  String? get nombreDueno;

  @BuiltValueField(wireName: 'Pais_Dueno')
  String? get paisDueno;

  @BuiltValueField(wireName: 'Biografia')
  String? get biografia;

  @BuiltValueField(wireName: 'link_funnel')
  String? get linkFunnel;

  @BuiltValueField(wireName: 'numero_funnels')
  int? get numeroFunnels;

  @BuiltValueField(wireName: 'numero_prspectos')
  int? get numeroPrspectos;

  @BuiltValueField(wireName: 'PHOTO_DUENO')
  String? get photoDueno;

  @BuiltValueField(wireName: 'cod_whatsapp')
  String? get codWhatsapp;

  @BuiltValueField(wireName: 'mensaje_whatsapp')
  String? get mensajeWhatsapp;

  @BuiltValueField(wireName: 'url_whatsapp')
  String? get urlWhatsapp;

  @BuiltValueField(wireName: 'ID_Pais')
  DocumentReference? get iDPais;

  @BuiltValueField(wireName: 'ID_Empresa')
  DocumentReference? get iDEmpresa;

  @BuiltValueField(wireName: 'is_Permanente')
  bool? get isPermanente;

  @BuiltValueField(wireName: 'Estado')
  bool? get estado;

  @BuiltValueField(wireName: 'id_Solicitud')
  DocumentReference? get idSolicitud;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PipRecordBuilder builder) => builder
    ..isDueno = false
    ..titulo = ''
    ..direcionURL = ''
    ..descripcion = ''
    ..urlDelNegocio = ''
    ..facebook = ''
    ..instagram = ''
    ..whatsApp = ''
    ..telegram = ''
    ..nombreDueno = ''
    ..paisDueno = ''
    ..biografia = ''
    ..linkFunnel = ''
    ..numeroFunnels = 0
    ..numeroPrspectos = 0
    ..photoDueno = ''
    ..codWhatsapp = ''
    ..mensajeWhatsapp = ''
    ..urlWhatsapp = ''
    ..isPermanente = false
    ..estado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pip');

  static Stream<PipRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PipRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PipRecord._();
  factory PipRecord([void Function(PipRecordBuilder) updates]) = _$PipRecord;

  static PipRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPipRecordData({
  bool? isDueno,
  DocumentReference? idUser,
  DateTime? fechaRegistro,
  String? titulo,
  String? direcionURL,
  String? descripcion,
  String? urlDelNegocio,
  String? facebook,
  String? instagram,
  String? whatsApp,
  String? telegram,
  String? nombreDueno,
  String? paisDueno,
  String? biografia,
  String? linkFunnel,
  int? numeroFunnels,
  int? numeroPrspectos,
  String? photoDueno,
  String? codWhatsapp,
  String? mensajeWhatsapp,
  String? urlWhatsapp,
  DocumentReference? iDPais,
  DocumentReference? iDEmpresa,
  bool? isPermanente,
  bool? estado,
  DocumentReference? idSolicitud,
}) {
  final firestoreData = serializers.toFirestore(
    PipRecord.serializer,
    PipRecord(
      (p) => p
        ..isDueno = isDueno
        ..idUser = idUser
        ..fechaRegistro = fechaRegistro
        ..titulo = titulo
        ..direcionURL = direcionURL
        ..descripcion = descripcion
        ..urlDelNegocio = urlDelNegocio
        ..facebook = facebook
        ..instagram = instagram
        ..whatsApp = whatsApp
        ..telegram = telegram
        ..nombreDueno = nombreDueno
        ..paisDueno = paisDueno
        ..biografia = biografia
        ..linkFunnel = linkFunnel
        ..numeroFunnels = numeroFunnels
        ..numeroPrspectos = numeroPrspectos
        ..photoDueno = photoDueno
        ..codWhatsapp = codWhatsapp
        ..mensajeWhatsapp = mensajeWhatsapp
        ..urlWhatsapp = urlWhatsapp
        ..iDPais = iDPais
        ..iDEmpresa = iDEmpresa
        ..isPermanente = isPermanente
        ..estado = estado
        ..idSolicitud = idSolicitud,
    ),
  );

  return firestoreData;
}
