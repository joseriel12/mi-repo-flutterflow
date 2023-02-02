import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EnviarSolicitudDNTWidget extends StatefulWidget {
  const EnviarSolicitudDNTWidget({Key? key}) : super(key: key);

  @override
  _EnviarSolicitudDNTWidgetState createState() =>
      _EnviarSolicitudDNTWidgetState();
}

class _EnviarSolicitudDNTWidgetState extends State<EnviarSolicitudDNTWidget> {
  SolicitudesDNTRecord? newSolicitud;
  String? dropDownValue;
  TextEditingController? textController1;
  TextEditingController? urlReferidoController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 3000));
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('SOLICITUD DE ACCESO'),
            content: Text(
                'Nuestro sistema detectó que aún no solicita acceso a nuestras herramientas, hágalo enviando sus datos del negocio que está promoviendo.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Aceptar'),
              ),
            ],
          );
        },
      );
    });

    textController1 = TextEditingController();
    urlReferidoController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController1?.dispose();
    urlReferidoController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/meduza_(1).jpg',
                ).image,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 500,
                      ),
                      decoration: BoxDecoration(),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 10),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9z1sz43h' /* BIENVENIDO  */,
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 14,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 10),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => GradientText(
                                            currentUserDisplayName,
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 14,
                                                ),
                                            colors: [
                                              Color(0xFF00BD11),
                                              Color(0xFF00FFE2)
                                            ],
                                            gradientDirection:
                                                GradientDirection.ltr,
                                            gradientType: GradientType.linear,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'a4bhovcv' /* ENVIA TU SOLICITUD DE ACCESO A... */,
                                    ),
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .title2
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'vc4bj1rz' /* Envia datos reales, que seran ... */,
                                      ),
                                      textAlign: TextAlign.center,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .title3
                                          .override(
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: Form(
                                    key: formKey,
                                    autovalidateMode: AutovalidateMode.always,
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 8,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xA4000425),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 20, 20, 20),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 8, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 200,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4,
                                                                          0,
                                                                          0,
                                                                          4),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'gloq7ugw' /* Empresa */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          4,
                                                                          0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      EmpresasRecord>>(
                                                                stream:
                                                                    queryEmpresasRecord(),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50,
                                                                        height:
                                                                            50,
                                                                        child:
                                                                            CircularProgressIndicator(
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<EmpresasRecord>
                                                                      dropDownEmpresasRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return FlutterFlowDropDown<
                                                                      String>(
                                                                    options: dropDownEmpresasRecordList
                                                                        .map((e) =>
                                                                            e.nombre)
                                                                        .withoutNulls
                                                                        .toList()
                                                                        .toList(),
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            dropDownValue =
                                                                                val),
                                                                    width: double
                                                                        .infinity,
                                                                    height: 50,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto Condensed',
                                                                          color:
                                                                              Colors.black,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'mwdyq4vk' /* Selecciona... */,
                                                                    ),
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    elevation:
                                                                        2,
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderWidth:
                                                                        0,
                                                                    borderRadius:
                                                                        8,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            4,
                                                                            12,
                                                                            4),
                                                                    hidesUnderline:
                                                                        true,
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 200,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          4),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'r38cenhq' /* Usuario */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    textController1,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'p3cximj3' /* Escribe tu usuario... */,
                                                                  ),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  errorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              12,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF021051),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 10, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: 200,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          0,
                                                                          0,
                                                                          4),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'cx7xurtm' /* URL Referido */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    urlReferidoController,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'cetnf1sm' /* Escribe tu usuario... */,
                                                                  ),
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  errorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  focusedErrorBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0x00000000),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  filled: true,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              12,
                                                                              4,
                                                                              0,
                                                                              0),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF021051),
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 12),
                                                child: StreamBuilder<
                                                    List<EmpresasRecord>>(
                                                  stream: queryEmpresasRecord(
                                                    queryBuilder:
                                                        (empresasRecord) =>
                                                            empresasRecord.where(
                                                                'Nombre',
                                                                isEqualTo:
                                                                    dropDownValue),
                                                    singleRecord: true,
                                                  ),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50,
                                                          height: 50,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: Color(
                                                                0xFF1900FF),
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<EmpresasRecord>
                                                        buttonLoginEmpresasRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final buttonLoginEmpresasRecord =
                                                        buttonLoginEmpresasRecordList
                                                                .isNotEmpty
                                                            ? buttonLoginEmpresasRecordList
                                                                .first
                                                            : null;
                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        if (formKey.currentState ==
                                                                null ||
                                                            !formKey
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }

                                                        final solicitudesDNTCreateData =
                                                            createSolicitudesDNTRecordData(
                                                          idUser:
                                                              currentUserReference,
                                                          usuarioEmpresa:
                                                              textController1!
                                                                  .text,
                                                          idEmpresa:
                                                              buttonLoginEmpresasRecord!
                                                                  .reference,
                                                          fechaRegistro:
                                                              getCurrentTimestamp,
                                                          estado: false,
                                                          urlReferido:
                                                              urlReferidoController!
                                                                  .text,
                                                        );
                                                        var solicitudesDNTRecordReference =
                                                            SolicitudesDNTRecord
                                                                .collection
                                                                .doc();
                                                        await solicitudesDNTRecordReference
                                                            .set(
                                                                solicitudesDNTCreateData);
                                                        newSolicitud = SolicitudesDNTRecord
                                                            .getDocumentFromData(
                                                                solicitudesDNTCreateData,
                                                                solicitudesDNTRecordReference);

                                                        final pipCreateData =
                                                            createPipRecordData(
                                                          titulo:
                                                              'Mi Funnel de${buttonLoginEmpresasRecord!.nombre}',
                                                          direcionURL:
                                                              valueOrDefault(
                                                                  currentUserDocument
                                                                      ?.nameUser,
                                                                  ''),
                                                          urlDelNegocio:
                                                              urlReferidoController!
                                                                  .text,
                                                          linkFunnel:
                                                              'https://teamdnt.pro/f1?user=${valueOrDefault(currentUserDocument?.nameUser, '')}',
                                                          iDPais:
                                                              currentUserDocument!
                                                                  .iDPais,
                                                          iDEmpresa:
                                                              buttonLoginEmpresasRecord!
                                                                  .reference,
                                                          isDueno: true,
                                                          idUser:
                                                              currentUserReference,
                                                          fechaRegistro:
                                                              getCurrentTimestamp,
                                                          isPermanente: true,
                                                          nombreDueno:
                                                              currentUserDisplayName,
                                                          photoDueno: currentUserPhoto !=
                                                                      null &&
                                                                  currentUserPhoto !=
                                                                      ''
                                                              ? currentUserPhoto
                                                              : 'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/user02.png',
                                                          urlWhatsapp:
                                                              'https://api.whatsapp.com/send?phone=${valueOrDefault(currentUserDocument?.numeroWhatsApp, '')}',
                                                          idSolicitud:
                                                              newSolicitud!
                                                                  .reference,
                                                          estado: false,
                                                        );
                                                        await PipRecord
                                                            .collection
                                                            .doc()
                                                            .set(pipCreateData);

                                                        context.pushNamed(
                                                            'Dashboard');

                                                        setState(() {});
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        've7wvay3' /* Enviar Solicitud */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 270,
                                                        height: 50,
                                                        color:
                                                            Color(0xFF01019B),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF00FFD8),
                                                          width: 1,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ovqn1sj4' /* REGRESAR AL DHASBOARD */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 14,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 12, 0, 8),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Acceso Limitado'),
                                                              content: Text(
                                                                  'Su acceso en nuestro sistema será limitado, contáctese con su patrocinador para más información.'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Aceptar'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );

                                                        context.pushNamed(
                                                          'Dashboard',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .bottomToTop,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      200),
                                                            ),
                                                          },
                                                        );
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '76aa359s' /*  */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .navigate_next_sharp,
                                                        size: 15,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 180,
                                                        height: 50,
                                                        color:
                                                            Color(0x81021051),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                        elevation: 3,
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0xFF00FFD8),
                                                          width: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
