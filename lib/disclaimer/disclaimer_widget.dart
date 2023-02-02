import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:signature/signature.dart';

class DisclaimerWidget extends StatefulWidget {
  const DisclaimerWidget({
    Key? key,
    this.pip,
  }) : super(key: key);

  final DocumentReference? pip;

  @override
  _DisclaimerWidgetState createState() => _DisclaimerWidgetState();
}

class _DisclaimerWidgetState extends State<DisclaimerWidget> {
  DisclaimerRecord? newDisclaimer;
  String uploadedSignatureUrl = '';
  TextEditingController? textFieldIdentidadController;
  TextEditingController? textFieldNombreController;
  late SignatureController signatureController;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    signatureController = SignatureController(
      penStrokeWidth: 1,
      penColor: Colors.black,
      exportBackgroundColor: Colors.white,
    );
    textFieldNombreController =
        TextEditingController(text: currentUserDisplayName);
    textFieldIdentidadController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    signatureController.dispose();
    textFieldNombreController?.dispose();
    textFieldIdentidadController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<PipRecord>(
      stream: PipRecord.getDocument(widget.pip!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: Color(0xFF1900FF),
              ),
            ),
          );
        }
        final disclaimerPipRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          body: GestureDetector(
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
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 1,
                        constraints: BoxConstraints(
                          maxWidth: 500,
                        ),
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 25, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25, 0, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            's0sq0lsj' /* Descargo de Responsabilidad */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .title2
                                              .override(
                                                fontFamily: 'Roboto',
                                                color: Colors.black,
                                              ),
                                        ),
                                      ),
                                      Expanded(
                                        child: StreamBuilder<EmpresasRecord>(
                                          stream: EmpresasRecord.getDocument(
                                              disclaimerPipRecord.iDEmpresa!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: Color(0xFF1900FF),
                                                  ),
                                                ),
                                              );
                                            }
                                            final rowEmpresasRecord =
                                                snapshot.data!;
                                            return Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Material(
                                                  color: Colors.transparent,
                                                  elevation: 2,
                                                  shape: const CircleBorder(),
                                                  child: Container(
                                                    width: 30,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          rowEmpresasRecord
                                                              .icono!,
                                                        ).image,
                                                      ),
                                                      shape: BoxShape.circle,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: Text(
                                                    rowEmpresasRecord.nombre!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000425),
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 6, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ubl2lva1' /* www.teamdnt.pro es una comunid... */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ck86bw42' /* Por lo tanto, la comunidad www... */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'on7e172n' /* Todos los proyectos que la com... */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '6rgy4z7t' /* Tomando en cuenta que las inve... */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => Text(
                                              'Entendiendo que resultados pasados no garantizan resultados futuros y que. Yo: ${textFieldNombreController!.text != null && textFieldNombreController!.text != '' ? currentUserDisplayName : 'TU NOMBRE.......................'} con cédula de identidad y ciudadanía N°. ${textFieldIdentidadController!.text != null && textFieldIdentidadController!.text != '' ? textFieldIdentidadController!.text : ' - - - - - - - - - - - - -'} de forma  voluntaria y bajo mi propia responsabilidad participaré en  en el proyecto que actualmente la comunidad DNT está desarrollando.',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              's3ckhpwz' /* Tomando en cuenta que las inve... */,
                                            ),
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 2, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 25, 6),
                                          child: Text(
                                            'FECHA: ${dateTimeFormat(
                                              'd/M/y',
                                              getCurrentTimestamp,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )}',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 350,
                                  constraints: BoxConstraints(
                                    maxWidth: 350,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Form(
                                    key: formKey,
                                    autovalidateMode: AutovalidateMode.always,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ClipRect(
                                                child: Signature(
                                                  controller:
                                                      signatureController,
                                                  backgroundColor:
                                                      Color(0xFFF6F6F6),
                                                  width: 210,
                                                  height: 80,
                                                ),
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.clear_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24,
                                                ),
                                                onPressed: () async {
                                                  setState(() {
                                                    signatureController.clear();
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 60, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hecsniao' /* Tu Firma */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 350,
                                            child: Divider(
                                              thickness: 1,
                                              indent: 1,
                                              endIndent: 1,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                50, 0, 50, 0),
                                                    child: AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          Container(
                                                        width: 350,
                                                        child: TextFormField(
                                                          controller:
                                                              textFieldNombreController,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                              'e0vz7q29' /* Tu Nombre Completo */,
                                                            ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .lineColor,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            filled: true,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8,
                                                                        8,
                                                                        8,
                                                                        8),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 12,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 8, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                50, 0, 50, 0),
                                                    child: Container(
                                                      width: 350,
                                                      child: TextFormField(
                                                        controller:
                                                            textFieldIdentidadController,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                            'ftdv3tqj' /* Número de Identidad */,
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          filled: true,
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(8,
                                                                      8, 8, 8),
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .title3
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 12, 0, 20),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    if (formKey.currentState ==
                                                            null ||
                                                        !formKey.currentState!
                                                            .validate()) {
                                                      return;
                                                    }

                                                    final signatureImage =
                                                        await signatureController
                                                            .toPngBytes();

                                                    if (signatureImage ==
                                                        null) {
                                                      return;
                                                    }

                                                    showUploadMessage(
                                                      context,
                                                      'Uploading signature...',
                                                      showLoading: true,
                                                    );
                                                    final downloadUrl =
                                                        (await uploadData(
                                                            getSignatureStoragePath(),
                                                            signatureImage));

                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .hideCurrentSnackBar();
                                                    if (downloadUrl != null) {
                                                      setState(() =>
                                                          uploadedSignatureUrl =
                                                              downloadUrl);
                                                      showUploadMessage(
                                                        context,
                                                        'Success!',
                                                      );
                                                    } else {
                                                      showUploadMessage(
                                                        context,
                                                        'Failed to upload signature',
                                                      );
                                                      return;
                                                    }

                                                    final disclaimerCreateData =
                                                        createDisclaimerRecordData(
                                                      signature:
                                                          uploadedSignatureUrl,
                                                      idUser:
                                                          currentUserReference,
                                                      fecha:
                                                          getCurrentTimestamp,
                                                      idPip: disclaimerPipRecord
                                                          .reference,
                                                      numeroIdentidad: int.tryParse(
                                                          textFieldIdentidadController!
                                                              .text),
                                                      idPatrocinador:
                                                          disclaimerPipRecord
                                                              .idUser,
                                                      urlNegocioPatrocinado:
                                                          disclaimerPipRecord
                                                              .urlDelNegocio,
                                                    );
                                                    var disclaimerRecordReference =
                                                        DisclaimerRecord
                                                            .collection
                                                            .doc();
                                                    await disclaimerRecordReference
                                                        .set(
                                                            disclaimerCreateData);
                                                    newDisclaimer = DisclaimerRecord
                                                        .getDocumentFromData(
                                                            disclaimerCreateData,
                                                            disclaimerRecordReference);

                                                    final prospectosCreateData =
                                                        createProspectosRecordData(
                                                      idUser:
                                                          currentUserReference,
                                                      idPip: disclaimerPipRecord
                                                          .reference,
                                                      idPais:
                                                          currentUserDocument!
                                                              .iDPais,
                                                      idDisclaimer:
                                                          newDisclaimer!
                                                              .reference,
                                                    );
                                                    await ProspectosRecord
                                                        .collection
                                                        .doc()
                                                        .set(
                                                            prospectosCreateData);

                                                    final pipUpdateData = {
                                                      'numero_prspectos':
                                                          FieldValue.increment(
                                                              1),
                                                    };
                                                    await disclaimerPipRecord
                                                        .reference
                                                        .update(pipUpdateData);

                                                    context.goNamed(
                                                      'docDisclaimer',
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .bottomToTop,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  200),
                                                        ),
                                                      },
                                                    );

                                                    setState(() {});
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'epvo2u4o' /* Completar */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 140,
                                                    height: 40,
                                                    color: Color(0xFF000310),
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .title2,
                                                    elevation: 2,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
        );
      },
    );
  }
}
