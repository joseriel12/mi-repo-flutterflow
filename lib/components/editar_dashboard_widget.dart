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
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarDashboardWidget extends StatefulWidget {
  const EditarDashboardWidget({
    Key? key,
    this.idNoticia,
  }) : super(key: key);

  final DocumentReference? idNoticia;

  @override
  _EditarDashboardWidgetState createState() => _EditarDashboardWidgetState();
}

class _EditarDashboardWidgetState extends State<EditarDashboardWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  Color? colorPicked1;
  Color? colorPicked2;
  TextEditingController? descripsionController;
  TextEditingController? tituloController;
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
    tituloController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<NoticiasDashboardRecord>(
      stream: NoticiasDashboardRecord.getDocument(widget.idNoticia!),
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
        final rowNoticiasDashboardRecord = snapshot.data!;
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '9k2qm4yb' /* ACCTUALIZAR NOTICIA DE DASHBOA... */,
                                                ),
                                                maxLines: 2,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFF000425),
                                                          fontWeight:
                                                              FontWeight.w900,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(15, 0, 0, 0),
                                              child: InkWell(
                                                onTap: () async {
                                                  Navigator.pop(context);
                                                },
                                                child: Icon(
                                                  Icons.close_rounded,
                                                  color: Colors.black,
                                                  size: 24,
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
                                                      'r10zv8ci' /* Titulo */,
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
                                                controller: tituloController ??=
                                                    TextEditingController(
                                                  text:
                                                      rowNoticiasDashboardRecord
                                                          .titulo,
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '71ean7ae' /* Escribe aqui... */,
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
                                                maxLines: 2,
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
                                                      'womxhhe4' /* Descripsion */,
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
                                                  text:
                                                      rowNoticiasDashboardRecord
                                                          .descripsion,
                                                ),
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'fyudomdr' /* Escribe aqui... */,
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
                                                  .fromSTEB(4, 0, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '92i448dh' /* Colores */,
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
                                                                'nuuabwqx' /* Color #01 */,
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
                                                                  : rowNoticiasDashboardRecord
                                                                      .color01,
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
                                                                  '19i8l2b9' /* Color #02 */,
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
                                                                    : rowNoticiasDashboardRecord
                                                                        .color02,
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
                                                      'arbb05d9' /* Imagen (1366x300 px) */,
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
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
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
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
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
                                                            showUploadMessage(
                                                                context,
                                                                'Success!');
                                                          } else {
                                                            setState(() {});
                                                            showUploadMessage(
                                                                context,
                                                                'Failed to upload media');
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
                                                          : rowNoticiasDashboardRecord
                                                              .imagen!,
                                                      width: 160,
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
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                if (formKey.currentState ==
                                                        null ||
                                                    !formKey.currentState!
                                                        .validate()) {
                                                  return;
                                                }

                                                final noticiasDashboardUpdateData =
                                                    createNoticiasDashboardRecordData(
                                                  imagen: isMediaUploading !=
                                                          null
                                                      ? uploadedFileUrl
                                                      : rowNoticiasDashboardRecord
                                                          .imagen,
                                                  titulo: (tituloController
                                                                      ?.text ??
                                                                  '') !=
                                                              null &&
                                                          (tituloController
                                                                      ?.text ??
                                                                  '') !=
                                                              ''
                                                      ? (tituloController
                                                              ?.text ??
                                                          '')
                                                      : rowNoticiasDashboardRecord
                                                          .titulo,
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
                                                      : rowNoticiasDashboardRecord
                                                          .descripsion,
                                                  color01: colorPicked1 != null
                                                      ? colorPicked1
                                                      : rowNoticiasDashboardRecord
                                                          .color01,
                                                  color02: colorPicked2 != null
                                                      ? colorPicked2
                                                      : rowNoticiasDashboardRecord
                                                          .color02,
                                                );
                                                await widget.idNoticia!.update(
                                                    noticiasDashboardUpdateData);
                                                setState(() {
                                                  tituloController?.clear();
                                                  descripsionController
                                                      ?.clear();
                                                });
                                                Navigator.pop(context);
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'c4q6jg2x' /* Acctualizar */,
                                              ),
                                              options: FFButtonOptions(
                                                width: 270,
                                                height: 50,
                                                color: Color(0xFF01019B),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
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
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        await widget.idNoticia!.delete();
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
                                                      'txdt8s5i' /* Eliminar */,
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
                                              rowNoticiasDashboardRecord
                                                      .estatus!
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
                                              if (!rowNoticiasDashboardRecord
                                                  .estatus!)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 8, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dglx764p' /* Publicar */,
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
                                              if (rowNoticiasDashboardRecord
                                                      .estatus ??
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 8, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2wzjuzyf' /* Publicado */,
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
                                                        rowNoticiasDashboardRecord
                                                            .estatus!,
                                                    onChanged:
                                                        (newValue) async {
                                                      setState(() =>
                                                          checkboxValue =
                                                              newValue!);
                                                      if (newValue!) {
                                                        final noticiasDashboardUpdateData =
                                                            createNoticiasDashboardRecordData(
                                                          estatus: true,
                                                        );
                                                        await widget.idNoticia!
                                                            .update(
                                                                noticiasDashboardUpdateData);
                                                      } else {
                                                        final noticiasDashboardUpdateData =
                                                            createNoticiasDashboardRecordData(
                                                          estatus: false,
                                                        );
                                                        await widget.idNoticia!
                                                            .update(
                                                                noticiasDashboardUpdateData);
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
