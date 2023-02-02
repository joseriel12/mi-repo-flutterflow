import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarTeamWidget extends StatefulWidget {
  const EditarTeamWidget({
    Key? key,
    this.idTeam,
  }) : super(key: key);

  final DocumentReference? idTeam;

  @override
  _EditarTeamWidgetState createState() => _EditarTeamWidgetState();
}

class _EditarTeamWidgetState extends State<EditarTeamWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  Color? colorPicked1;
  Color? colorPicked2;
  String? dropDownValue;
  TextEditingController? descripsionController;
  TextEditingController? nombreController;
  bool mouseRegionHovered = false;
  bool? checkboxValue;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    descripsionController?.dispose();
    nombreController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<EquipoRecord>(
      stream: EquipoRecord.getDocument(widget.idTeam!),
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
        final rowEquipoRecord = snapshot.data!;
        return Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Form(
                key: formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 500,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).lineColor,
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(
                          color: Color(0xC3000310),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15, 15, 15, 15),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 0, 6),
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 2,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: Container(
                                            width: 60,
                                            height: 8,
                                            decoration: BoxDecoration(
                                              color: Color(0xFF00BD11),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 20),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8sda88ip' /* EDITAR DATOS DE USUARIO */,
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .title2
                                                  .override(
                                                    fontFamily: 'Roboto',
                                                    color: Color(0xFF000425),
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                Navigator.pop(context);
                                              },
                                              child: Icon(
                                                Icons.close_rounded,
                                                color: Colors.black,
                                                size: 24,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a0h8batz' /* Nombre */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000425),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: TextFormField(
                                                controller: nombreController ??=
                                                    TextEditingController(
                                                  text: rowEquipoRecord.nombre,
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '4vlzqheo' /* Escribe aqui... */,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xA4000425),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xA4000425),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              12, 0, 0, 0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0xFF000425),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ulbt5dpg' /* Descripsion */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000425),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: TextFormField(
                                                controller:
                                                    descripsionController ??=
                                                        TextEditingController(
                                                  text: rowEquipoRecord
                                                      .descripsion,
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'd41wb0ff' /* Escribe aqui... */,
                                                  ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xA4000425),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xA4000425),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  filled: true,
                                                  fillColor: Colors.white,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                              12, 12, 12, 12),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color:
                                                              Color(0xFF000425),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                maxLines: 4,
                                                keyboardType:
                                                    TextInputType.multiline,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 4, 4),
                                              child: StreamBuilder<
                                                  CodPaisesRecord>(
                                                stream:
                                                    CodPaisesRecord.getDocument(
                                                        rowEquipoRecord
                                                            .iDPais!),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color:
                                                              Color(0xFF1900FF),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final rowCodPaisesRecord =
                                                      snapshot.data!;
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wxrjqgxd' /* Pais */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF000425),
                                                                ),
                                                      ),
                                                      Text(
                                                        rowCodPaisesRecord
                                                            .pais!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF000425),
                                                                  fontSize: 12,
                                                                ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(),
                                              child: StreamBuilder<
                                                  List<CodPaisesRecord>>(
                                                stream: queryCodPaisesRecord(),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color:
                                                              Color(0xFF1900FF),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<CodPaisesRecord>
                                                      dropDownCodPaisesRecordList =
                                                      snapshot.data!;
                                                  return FlutterFlowDropDown<
                                                      String>(
                                                    options:
                                                        dropDownCodPaisesRecordList
                                                            .map(
                                                                (e) => e.nombre)
                                                            .withoutNulls
                                                            .toList()
                                                            .toList(),
                                                    onChanged: (val) =>
                                                        setState(() =>
                                                            dropDownValue =
                                                                val),
                                                    width: double.infinity,
                                                    height: 50,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: Colors.black,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'axxyy5p6' /* Please select... */,
                                                    ),
                                                    fillColor: Colors.white,
                                                    elevation: 2,
                                                    borderColor:
                                                        Color(0xA4000425),
                                                    borderWidth: 1,
                                                    borderRadius: 8,
                                                    margin:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 4, 12, 4),
                                                    hidesUnderline: true,
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tmwek6zp' /* Colores */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000425),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    final _colorPicked1Color =
                                                        await showFFColorPicker(
                                                      context,
                                                      currentColor:
                                                          colorPicked1 ??=
                                                              Color(0x00000000),
                                                      showRecentColors: true,
                                                      allowOpacity: true,
                                                      textColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      secondaryTextColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      primaryButtonBackgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      primaryButtonTextColor:
                                                          Colors.white,
                                                      primaryButtonBorderColor:
                                                          Colors.transparent,
                                                      displayAsBottomSheet:
                                                          isMobileWidth(
                                                              context),
                                                    );

                                                    if (_colorPicked1Color !=
                                                        null) {
                                                      setState(() =>
                                                          colorPicked1 =
                                                              _colorPicked1Color);
                                                    }
                                                  },
                                                  child: Container(
                                                    height: 50,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xA4000425),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12, 0, 12, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        4,
                                                                        0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'ymolrdy9' /* Color #01 */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto Condensed',
                                                                    color: Color(
                                                                        0xFF000425),
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
                                                            child: Icon(
                                                              Icons.color_lens,
                                                              color: colorPicked1 !=
                                                                      null
                                                                  ? colorPicked1
                                                                  : rowEquipoRecord
                                                                      .color,
                                                              size: 24,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      final _colorPicked2Color =
                                                          await showFFColorPicker(
                                                        context,
                                                        currentColor: colorPicked2 ??=
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        showRecentColors: true,
                                                        allowOpacity: true,
                                                        textColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        secondaryTextColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBackground,
                                                        primaryButtonBackgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryColor,
                                                        primaryButtonTextColor:
                                                            Colors.white,
                                                        primaryButtonBorderColor:
                                                            Colors.transparent,
                                                        displayAsBottomSheet:
                                                            isMobileWidth(
                                                                context),
                                                      );

                                                      if (_colorPicked2Color !=
                                                          null) {
                                                        setState(() =>
                                                            colorPicked2 =
                                                                _colorPicked2Color);
                                                      }
                                                    },
                                                    child: Container(
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xA4000425),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    12, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          4,
                                                                          0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'eociilef' /* Color #02 */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF000425),
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
                                                              child: Icon(
                                                                Icons
                                                                    .color_lens,
                                                                color: colorPicked2 !=
                                                                        null
                                                                    ? colorPicked2
                                                                    : rowEquipoRecord
                                                                        .color2,
                                                                size: 24,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fti0ozd6' /* Foto (500x500 px) */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000425),
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                border: Border.all(
                                                  color: Color(0xA4000425),
                                                  width: 1,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                50, 0, 0, 0),
                                                    child:
                                                        FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30,
                                                      borderWidth: 1,
                                                      buttonSize: 60,
                                                      icon: Icon(
                                                        Icons.add,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 30,
                                                      ),
                                                      onPressed: () async {
                                                        final selectedMedia =
                                                            await selectMediaWithSourceBottomSheet(
                                                          context: context,
                                                          maxWidth: 500.00,
                                                          maxHeight: 500.00,
                                                          allowPhoto: true,
                                                        );
                                                        if (selectedMedia !=
                                                                null &&
                                                            selectedMedia.every((m) =>
                                                                validateFileFormat(
                                                                    m.storagePath,
                                                                    context))) {
                                                          setState(() =>
                                                              isMediaUploading =
                                                                  true);
                                                          var downloadUrls =
                                                              <String>[];
                                                          try {
                                                            downloadUrls =
                                                                (await Future
                                                                        .wait(
                                                              selectedMedia.map(
                                                                (m) async =>
                                                                    await uploadData(
                                                                        m.storagePath,
                                                                        m.bytes),
                                                              ),
                                                            ))
                                                                    .where((u) =>
                                                                        u !=
                                                                        null)
                                                                    .map((u) =>
                                                                        u!)
                                                                    .toList();
                                                          } finally {
                                                            isMediaUploading =
                                                                false;
                                                          }
                                                          if (downloadUrls
                                                                  .length ==
                                                              selectedMedia
                                                                  .length) {
                                                            setState(() =>
                                                                uploadedFileUrl =
                                                                    downloadUrls
                                                                        .first);
                                                          } else {
                                                            setState(() {});
                                                            return;
                                                          }
                                                        }
                                                      },
                                                    ),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0),
                                                      bottomRight:
                                                          Radius.circular(8),
                                                      topLeft:
                                                          Radius.circular(0),
                                                      topRight:
                                                          Radius.circular(8),
                                                    ),
                                                    child: Image.network(
                                                      uploadedFileUrl != null &&
                                                              uploadedFileUrl !=
                                                                  ''
                                                          ? uploadedFileUrl
                                                          : rowEquipoRecord
                                                              .foto!,
                                                      width: 80,
                                                      height: 80,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 12),
                                            child: StreamBuilder<
                                                List<CodPaisesRecord>>(
                                              stream: queryCodPaisesRecord(
                                                queryBuilder:
                                                    (codPaisesRecord) =>
                                                        codPaisesRecord.where(
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
                                                        color:
                                                            Color(0xFF1900FF),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CodPaisesRecord>
                                                    buttonLoginCodPaisesRecordList =
                                                    snapshot.data!;
                                                final buttonLoginCodPaisesRecord =
                                                    buttonLoginCodPaisesRecordList
                                                            .isNotEmpty
                                                        ? buttonLoginCodPaisesRecordList
                                                            .first
                                                        : null;
                                                return FFButtonWidget(
                                                  onPressed: () async {
                                                    if (formKey.currentState ==
                                                            null ||
                                                        !formKey.currentState!
                                                            .validate()) {
                                                      return;
                                                    }

                                                    final equipoUpdateData =
                                                        createEquipoRecordData(
                                                      foto: uploadedFileUrl !=
                                                                  null &&
                                                              uploadedFileUrl !=
                                                                  ''
                                                          ? uploadedFileUrl
                                                          : rowEquipoRecord
                                                              .foto,
                                                      descripsion: (descripsionController
                                                                          ?.text ??
                                                                      '') !=
                                                                  null &&
                                                              (descripsionController
                                                                          ?.text ??
                                                                      '') !=
                                                                  ''
                                                          ? (descripsionController
                                                                  ?.text ??
                                                              '')
                                                          : rowEquipoRecord
                                                              .descripsion,
                                                      nombre: (nombreController?.text ??
                                                                      '') !=
                                                                  null &&
                                                              (nombreController
                                                                          ?.text ??
                                                                      '') !=
                                                                  ''
                                                          ? (nombreController
                                                                  ?.text ??
                                                              '')
                                                          : rowEquipoRecord
                                                              .nombre,
                                                      color:
                                                          colorPicked1 != null
                                                              ? colorPicked1
                                                              : rowEquipoRecord
                                                                  .color,
                                                      color2:
                                                          colorPicked2 != null
                                                              ? colorPicked2
                                                              : rowEquipoRecord
                                                                  .color2,
                                                      iDPais: dropDownValue !=
                                                                  null &&
                                                              dropDownValue !=
                                                                  ''
                                                          ? buttonLoginCodPaisesRecord!
                                                              .reference
                                                          : rowEquipoRecord
                                                              .iDPais,
                                                    );
                                                    await widget.idTeam!.update(
                                                        equipoUpdateData);
                                                    setState(() {
                                                      nombreController?.clear();
                                                      descripsionController
                                                          ?.clear();
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'dmgkcnbg' /* Actualizar */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 270,
                                                    height: 50,
                                                    color: Color(0xFF01019B),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    elevation: 3,
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                              child: MouseRegion(
                                opaque: false,
                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await widget.idTeam!.delete();
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 8,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Container(
                                          width: 120,
                                          height: 35,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: mouseRegionHovered!
                                                  ? FlutterFlowTheme.of(context)
                                                      .customColor3
                                                  : Colors.black,
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 4, 4, 4),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 8, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'prht9rb4' /* Eliminar */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 8, 0),
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: mouseRegionHovered!
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customColor3
                                                        : Colors.black,
                                                    size: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 8,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Container(
                                        width: 120,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: valueOrDefault<Color>(
                                              rowEquipoRecord.estatus!
                                                  ? FlutterFlowTheme.of(context)
                                                      .customColor1
                                                  : Color(0x3800FFD8),
                                              Color(0xA4000425),
                                            ),
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4, 4, 4, 4),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              if (!rowEquipoRecord.estatus!)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 8, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ufitg2xj' /* Publicar */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              if (rowEquipoRecord.estatus ??
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 8, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '48ddre0q' /* Publicado */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 8, 0),
                                                child: Theme(
                                                  data: ThemeData(
                                                    checkboxTheme:
                                                        CheckboxThemeData(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0),
                                                      ),
                                                    ),
                                                    unselectedWidgetColor:
                                                        Color(0x3300FFD8),
                                                  ),
                                                  child: Checkbox(
                                                    value: checkboxValue ??=
                                                        rowEquipoRecord
                                                            .estatus!,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          checkboxValue =
                                                              newValue!);
                                                      if (newValue!) {
                                                        final equipoUpdateData =
                                                            createEquipoRecordData(
                                                          estatus: true,
                                                        );
                                                        await widget.idTeam!
                                                            .update(
                                                                equipoUpdateData);
                                                      } else {
                                                        final equipoUpdateData =
                                                            createEquipoRecordData(
                                                          estatus: false,
                                                        );
                                                        await widget.idTeam!
                                                            .update(
                                                                equipoUpdateData);
                                                      }
                                                    },
                                                    activeColor:
                                                        Color(0xFF00231E),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                onEnter: ((event) async {
                                  setState(() => mouseRegionHovered = true);
                                }),
                                onExit: ((event) async {
                                  setState(() => mouseRegionHovered = false);
                                }),
                              ),
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
        );
      },
    );
  }
}
