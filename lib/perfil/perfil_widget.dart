import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/menu_izquierdo_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({Key? key}) : super(key: key);

  @override
  _PerfilWidgetState createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Container(
        width: 200,
        child: Drawer(
          elevation: 16,
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: MenuIzquierdoWidget(),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imageneshomednt/ini%2002.jpg',
              ).image,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 500,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 8),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child:
                                                            AuthUserStreamWidget(
                                                          builder: (context) =>
                                                              Container(
                                                            width:
                                                                double.infinity,
                                                            height: 310,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                fit: BoxFit
                                                                    .cover,
                                                                image: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.fotoPortada,
                                                                        ''),
                                                                    'https://i.pinimg.com/736x/73/f1/f2/73f1f237bc86917b0fe3f32be0720d56--peter-lik-photography-fine-art-photography.jpg',
                                                                  ),
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(125,
                                                                    12, 10, 0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        currentUserDisplayName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: Color(0xFF000310),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        valueOrDefault(
                                                                            currentUserDocument?.nameUser,
                                                                            ''),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: Colors.black,
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          AuthUserStreamWidget(
                                                                            builder: (context) =>
                                                                                Text(
                                                                              '${(currentUserDocument?.seguidores?.toList() ?? []).length.toString()} personas te estan siguiendo',
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Roboto Condensed',
                                                                                    color: Colors.black,
                                                                                    fontSize: 10,
                                                                                    fontWeight: FontWeight.w300,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        if (responsiveVisibility(
                                                                          context:
                                                                              context,
                                                                          phone:
                                                                              false,
                                                                        ))
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    context.pushNamed(
                                                                                      'Ajustss',
                                                                                      extra: <String, dynamic>{
                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.bottomToTop,
                                                                                          duration: Duration(milliseconds: 200),
                                                                                        ),
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    'xxak9vba' /* Editar perfil */,
                                                                                  ),
                                                                                  icon: Icon(
                                                                                    Icons.edit,
                                                                                    size: 18,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 110,
                                                                                    height: 35,
                                                                                    color: Color(0xFF0010A0),
                                                                                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                          fontSize: 12,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  context.pushNamed(
                                                                                    'AllChat',
                                                                                    extra: <String, dynamic>{
                                                                                      kTransitionInfoKey: TransitionInfo(
                                                                                        hasTransition: true,
                                                                                        transitionType: PageTransitionType.bottomToTop,
                                                                                        duration: Duration(milliseconds: 200),
                                                                                      ),
                                                                                    },
                                                                                  );
                                                                                },
                                                                                text: FFLocalizations.of(context).getText(
                                                                                  'xmykcsm5' /* Mensajes */,
                                                                                ),
                                                                                icon: Icon(
                                                                                  Icons.chat_bubble,
                                                                                  size: 18,
                                                                                ),
                                                                                options: FFButtonOptions(
                                                                                  width: 110,
                                                                                  height: 35,
                                                                                  color: Color(0xFF0010A0),
                                                                                  textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                        fontSize: 12,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                  borderSide: BorderSide(
                                                                                    color: Colors.transparent,
                                                                                    width: 1,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(8),
                                                                                ),
                                                                              ),
                                                                            ],
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
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 250, 12, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      FFButtonWidget(
                                                        onPressed: () async {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            imageQuality: 80,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            setState(() =>
                                                                isMediaUploading1 =
                                                                    true);
                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true,
                                                              );
                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
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
                                                              isMediaUploading1 =
                                                                  false;
                                                            }
                                                            if (downloadUrls
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                              setState(() =>
                                                                  uploadedFileUrl1 =
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

                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .subirFotoPortada =
                                                                uploadedFileUrl1;
                                                          });

                                                          final usersUpdateData =
                                                              createUsersRecordData(
                                                            fotoPortada:
                                                                FFAppState()
                                                                    .subirFotoPortada,
                                                          );
                                                          await currentUserReference!
                                                              .update(
                                                                  usersUpdateData);
                                                        },
                                                        text:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'd4vhccul' /* Cargar Foto Portada */,
                                                        ),
                                                        icon: Icon(
                                                          Icons.photo_camera,
                                                          size: 20,
                                                        ),
                                                        options:
                                                            FFButtonOptions(
                                                          width: 180,
                                                          height: 40,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .subtitle2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .backgroundComponents,
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 280, 0, 0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 2,
                                                    shape: const CircleBorder(),
                                                    child: Container(
                                                      width: 110,
                                                      height: 110,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          width: 2,
                                                        ),
                                                      ),
                                                      child: Container(
                                                        width: 100,
                                                        height: 100,
                                                        child: Stack(
                                                          children: [
                                                            AuthUserStreamWidget(
                                                              builder:
                                                                  (context) =>
                                                                      Container(
                                                                width: 100,
                                                                height: 100,
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    currentUserPhoto,
                                                                    'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1, 0.95),
                                                              child: InkWell(
                                                                onTap:
                                                                    () async {
                                                                  final selectedMedia =
                                                                      await selectMediaWithSourceBottomSheet(
                                                                    context:
                                                                        context,
                                                                    maxWidth:
                                                                        500.00,
                                                                    maxHeight:
                                                                        500.00,
                                                                    imageQuality:
                                                                        80,
                                                                    allowPhoto:
                                                                        true,
                                                                    backgroundColor:
                                                                        Color(
                                                                            0xFF00300F),
                                                                    textColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                  );
                                                                  if (selectedMedia !=
                                                                          null &&
                                                                      selectedMedia.every((m) => validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                    setState(() =>
                                                                        isMediaUploading2 =
                                                                            true);
                                                                    var downloadUrls =
                                                                        <String>[];
                                                                    try {
                                                                      showUploadMessage(
                                                                        context,
                                                                        'Uploading file...',
                                                                        showLoading:
                                                                            true,
                                                                      );
                                                                      downloadUrls = (await Future
                                                                              .wait(
                                                                        selectedMedia
                                                                            .map(
                                                                          (m) async => await uploadData(
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
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .hideCurrentSnackBar();
                                                                      isMediaUploading2 =
                                                                          false;
                                                                    }
                                                                    if (downloadUrls
                                                                            .length ==
                                                                        selectedMedia
                                                                            .length) {
                                                                      setState(() =>
                                                                          uploadedFileUrl2 =
                                                                              downloadUrls.first);
                                                                      showUploadMessage(
                                                                          context,
                                                                          'Success!');
                                                                    } else {
                                                                      setState(
                                                                          () {});
                                                                      showUploadMessage(
                                                                          context,
                                                                          'Failed to upload media');
                                                                      return;
                                                                    }
                                                                  }

                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .SubirFotoperfil =
                                                                        uploadedFileUrl2;
                                                                  });

                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    photoUrl:
                                                                        FFAppState()
                                                                            .SubirFotoperfil,
                                                                  );
                                                                  await currentUserReference!
                                                                      .update(
                                                                          usersUpdateData);
                                                                },
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: Color(
                                                                      0xFFF5F5F5),
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                    child: Icon(
                                                                      Icons
                                                                          .photo_camera,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 24,
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
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 12, 12, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () {
                                                    print('Button pressed ...');
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'relkclex' /* Editar perfil */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.edit,
                                                    size: 18,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 110,
                                                    height: 35,
                                                    color: Color(0xFF0010A0),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 0, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                      'AllChat',
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
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'qfxf0kgw' /* Mensaje */,
                                                  ),
                                                  icon: Icon(
                                                    Icons.chat_bubble,
                                                    size: 18,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 110,
                                                    height: 35,
                                                    color: Color(0xFF0010A0),
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 700,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x320E151B),
                                          offset: Offset(0, -2),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 12, 0, 0),
                                              child: DefaultTabController(
                                                length: 2,
                                                initialIndex: 0,
                                                child: Column(
                                                  children: [
                                                    TabBar(
                                                      labelColor:
                                                          Color(0xFF000310),
                                                      unselectedLabelColor:
                                                          Color(0x86000310),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                      indicatorColor:
                                                          Color(0xFF0010A0),
                                                      tabs: [
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'k4rw41de' /* Publicaciones */,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'widqk6hk' /* Favoritos */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      child: TabBarView(
                                                        children: [
                                                          StreamBuilder<
                                                              List<
                                                                  UserPostRecord>>(
                                                            stream:
                                                                queryUserPostRecord(
                                                              queryBuilder: (userPostRecord) => userPostRecord
                                                                  .where(
                                                                      'postUser',
                                                                      isEqualTo:
                                                                          currentUserReference)
                                                                  .orderBy(
                                                                      'time_posted',
                                                                      descending:
                                                                          true),
                                                              limit: 30,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
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
                                                              List<UserPostRecord>
                                                                  columnUserPostRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    columnUserPostRecordList
                                                                        .length,
                                                                    (columnIndex) {
                                                                  final columnUserPostRecord =
                                                                      columnUserPostRecordList[
                                                                          columnIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            4,
                                                                            0,
                                                                            8),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                4,
                                                                            color:
                                                                                Color(0x32000000),
                                                                            offset:
                                                                                Offset(0, 2),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                8,
                                                                                2,
                                                                                4),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                      child: Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: FlutterFlowTheme.of(context).alternateTwo,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(20),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                                                                                          child: AuthUserStreamWidget(
                                                                                            builder: (context) => Container(
                                                                                              width: 40,
                                                                                              height: 40,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              decoration: BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: CachedNetworkImage(
                                                                                                imageUrl: valueOrDefault<String>(
                                                                                                  currentUserPhoto,
                                                                                                  'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                ),
                                                                                                fit: BoxFit.fitWidth,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                                                      child: AuthUserStreamWidget(
                                                                                        builder: (context) => Text(
                                                                                          valueOrDefault(currentUserDocument?.nameUser, ''),
                                                                                          style: FlutterFlowTheme.of(context).subtitle1,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                FlutterFlowIconButton(
                                                                                  borderColor: Colors.transparent,
                                                                                  borderRadius: 30,
                                                                                  buttonSize: 46,
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_control,
                                                                                    color: Color(0xC3000310),
                                                                                    size: 20,
                                                                                  ),
                                                                                  onPressed: () {
                                                                                    print('IconButton pressed ...');
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          FlutterFlowMediaDisplay(
                                                                            path:
                                                                                columnUserPostRecord.postPhoto!,
                                                                            imageBuilder: (path) =>
                                                                                CachedNetworkImage(
                                                                              imageUrl: path,
                                                                              width: MediaQuery.of(context).size.width,
                                                                              height: 300,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                            videoPlayerBuilder: (path) =>
                                                                                FlutterFlowVideoPlayer(
                                                                              path: path,
                                                                              width: 300,
                                                                              autoPlay: false,
                                                                              looping: true,
                                                                              showControls: true,
                                                                              allowFullScreen: true,
                                                                              allowPlaybackSpeedMenu: false,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                4,
                                                                                8,
                                                                                0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 41,
                                                                                            height: 41,
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(0, 0),
                                                                                                  child: Icon(
                                                                                                    Icons.favorite_rounded,
                                                                                                    color: Color(0xFFFF0000),
                                                                                                    size: 25,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'nyvco5t9' /* 2,493 */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Color(0xFF000310),
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Icon(
                                                                                          Icons.mode_comment_outlined,
                                                                                          color: FlutterFlowTheme.of(context).alternateTwo,
                                                                                          size: 24,
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                          child: Text(
                                                                                            columnUserPostRecord.numComments!.toString(),
                                                                                            style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: Color(0xFF000310),
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 2, 8, 0),
                                                                                      child: Text(
                                                                                        dateTimeFormat(
                                                                                          'relative',
                                                                                          columnUserPostRecord.timePosted!,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: Color(0xFF000310),
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    Icon(
                                                                                      Icons.ios_share,
                                                                                      color: FlutterFlowTheme.of(context).alternateTwo,
                                                                                      size: 24,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2,
                                                                                4,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 12),
                                                                                    child: Text(
                                                                                      columnUserPostRecord.postDescription!,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: Color(0xFF000310),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        2,
                                                                        0,
                                                                        0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    UsersRecord>>(
                                                              stream:
                                                                  queryUsersRecord(
                                                                queryBuilder: (usersRecord) =>
                                                                    usersRecord.where(
                                                                        'Seguidores',
                                                                        arrayContains:
                                                                            currentUserReference),
                                                                limit: 20,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 50,
                                                                      height:
                                                                          50,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        color: Color(
                                                                            0xFF1900FF),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<UsersRecord>
                                                                    columnUsersRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List.generate(
                                                                      columnUsersRecordList
                                                                          .length,
                                                                      (columnIndex) {
                                                                    final columnUsersRecord =
                                                                        columnUsersRecordList[
                                                                            columnIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              8,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'PerfilTodos',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.bottomToTop,
                                                                                duration: Duration(milliseconds: 200),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                350,
                                                                            height:
                                                                                60,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(10),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 2, 8, 2),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                        child: Card(
                                                                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                          color: FlutterFlowTheme.of(context).alternateTwo,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(20),
                                                                                          ),
                                                                                          child: Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                                                                                            child: Container(
                                                                                              width: 40,
                                                                                              height: 40,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              decoration: BoxDecoration(
                                                                                                shape: BoxShape.circle,
                                                                                              ),
                                                                                              child: CachedNetworkImage(
                                                                                                imageUrl: valueOrDefault<String>(
                                                                                                  columnUsersRecord.photoUrl,
                                                                                                  'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                ),
                                                                                                fit: BoxFit.fitWidth,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                                                        child: Text(
                                                                                          columnUsersRecord.nameUser!,
                                                                                          style: FlutterFlowTheme.of(context).subtitle1,
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 30,
                                                                                    buttonSize: 46,
                                                                                    icon: Icon(
                                                                                      Icons.keyboard_control,
                                                                                      color: Color(0xC3000310),
                                                                                      size: 20,
                                                                                    ),
                                                                                    onPressed: () {
                                                                                      print('IconButton pressed ...');
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
