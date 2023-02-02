import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/menu_izquierdo_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PerfilTodosWidget extends StatefulWidget {
  const PerfilTodosWidget({
    Key? key,
    this.userReferens,
  }) : super(key: key);

  final UsersRecord? userReferens;

  @override
  _PerfilTodosWidgetState createState() => _PerfilTodosWidgetState();
}

class _PerfilTodosWidgetState extends State<PerfilTodosWidget> {
  ChatsRecord? newChatPerfil;
  ChatsRecord? newChatPerfilMovil;
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

    return StreamBuilder<UsersRecord>(
      stream: UsersRecord.getDocument(widget.userReferens!.reference),
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
        final perfilTodosUsersRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          drawer: Container(
            width: 200,
            child: Drawer(
              elevation: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF000310),
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
                                  FlutterFlowTheme.of(context).primaryBtnText,
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 8),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: Container(
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
                                                                    perfilTodosUsersRecord
                                                                        .fotoPortada,
                                                                    'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imageneshomednt/2.jpg',
                                                                  ),
                                                                ).image,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      125,
                                                                      12,
                                                                      10,
                                                                      0),
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
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      perfilTodosUsersRecord
                                                                          .displayName!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).backgroundComponents,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      perfilTodosUsersRecord
                                                                          .nameUser!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto Condensed',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w500,
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
                                                                          Text(
                                                                            '${perfilTodosUsersRecord.seguidores!.toList().length.toString()} personas lo siguen',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Roboto Condensed',
                                                                                  color: Colors.black,
                                                                                  fontSize: 10,
                                                                                  fontWeight: FontWeight.w300,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
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
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          if (responsiveVisibility(
                                                                            context:
                                                                                context,
                                                                            phone:
                                                                                false,
                                                                          ))
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (!perfilTodosUsersRecord.seguidores!.toList().contains(currentUserReference))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            final usersUpdateData = {
                                                                                              'Seguidores': FieldValue.arrayUnion([
                                                                                                currentUserReference
                                                                                              ]),
                                                                                            };
                                                                                            await currentUserReference!.update(usersUpdateData);
                                                                                          },
                                                                                          text: FFLocalizations.of(context).getText(
                                                                                            'x2sqkloy' /* Seguir */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.person_add_alt_1,
                                                                                            size: 18,
                                                                                          ),
                                                                                          options: FFButtonOptions(
                                                                                            width: 110,
                                                                                            height: 35,
                                                                                            color: FlutterFlowTheme.of(context).lineColor,
                                                                                            textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: Color(0xFF0010A0),
                                                                                                  fontSize: 12,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                ),
                                                                                            borderSide: BorderSide(
                                                                                              color: Color(0xFF0010A0),
                                                                                              width: 2,
                                                                                            ),
                                                                                            borderRadius: BorderRadius.circular(8),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    if (perfilTodosUsersRecord.seguidores!.toList().contains(currentUserReference))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                        child: FFButtonWidget(
                                                                                          onPressed: () async {
                                                                                            final usersUpdateData = {
                                                                                              'Seguidores': FieldValue.arrayRemove([
                                                                                                currentUserReference
                                                                                              ]),
                                                                                            };
                                                                                            await currentUserReference!.update(usersUpdateData);
                                                                                          },
                                                                                          text: FFLocalizations.of(context).getText(
                                                                                            'dgstoma3' /* Dejar de Seguir */,
                                                                                          ),
                                                                                          icon: Icon(
                                                                                            Icons.person_remove_rounded,
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
                                                                                  ],
                                                                                ),
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    final chatsCreateData = {
                                                                                      ...createChatsRecordData(
                                                                                        userA: currentUserReference,
                                                                                        userB: perfilTodosUsersRecord.reference,
                                                                                      ),
                                                                                      'users': [
                                                                                        currentUserReference
                                                                                      ],
                                                                                    };
                                                                                    var chatsRecordReference = ChatsRecord.collection.doc();
                                                                                    await chatsRecordReference.set(chatsCreateData);
                                                                                    newChatPerfil = ChatsRecord.getDocumentFromData(chatsCreateData, chatsRecordReference);

                                                                                    final chatsUpdateData = {
                                                                                      'users': FieldValue.arrayUnion([
                                                                                        perfilTodosUsersRecord.reference
                                                                                      ]),
                                                                                    };
                                                                                    await newChatPerfil!.reference.update(chatsUpdateData);

                                                                                    context.pushNamed(
                                                                                      'ChatPage',
                                                                                      queryParams: {
                                                                                        'chatUser': serializeParam(
                                                                                          perfilTodosUsersRecord,
                                                                                          ParamType.Document,
                                                                                        ),
                                                                                        'chatRef': serializeParam(
                                                                                          newChatPerfil!.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                      extra: <String, dynamic>{
                                                                                        'chatUser': perfilTodosUsersRecord,
                                                                                      },
                                                                                    );

                                                                                    setState(() {});
                                                                                  },
                                                                                  text: FFLocalizations.of(context).getText(
                                                                                    '25xjevur' /* Escribir */,
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 280, 0, 0),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 2,
                                                      shape:
                                                          const CircleBorder(),
                                                      child: Container(
                                                        width: 100,
                                                        height: 100,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                            width: 2,
                                                          ),
                                                        ),
                                                        child: Container(
                                                          width: 100,
                                                          height: 100,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              perfilTodosUsersRecord
                                                                  .photoUrl,
                                                              'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                            ),
                                                            fit: BoxFit.cover,
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
                                                    10, 10, 10, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 8, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (!perfilTodosUsersRecord
                                                          .seguidores!
                                                          .toList()
                                                          .contains(
                                                              currentUserReference))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 5, 0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final usersUpdateData =
                                                                  {
                                                                'Seguidores':
                                                                    FieldValue
                                                                        .arrayUnion([
                                                                  currentUserReference
                                                                ]),
                                                              };
                                                              await currentUserReference!
                                                                  .update(
                                                                      usersUpdateData);
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '2gj5mccu' /* Seguir */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .person_add_alt_1,
                                                              size: 18,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 110,
                                                              height: 35,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .lineColor,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: Color(
                                                                            0xFF0010A0),
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0xFF0010A0),
                                                                width: 2,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                      if (perfilTodosUsersRecord
                                                          .seguidores!
                                                          .toList()
                                                          .contains(
                                                              currentUserReference))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 5, 0),
                                                          child: FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              final usersUpdateData =
                                                                  {
                                                                'Seguidores':
                                                                    FieldValue
                                                                        .arrayRemove([
                                                                  currentUserReference
                                                                ]),
                                                              };
                                                              await currentUserReference!
                                                                  .update(
                                                                      usersUpdateData);
                                                            },
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'epf89amr' /* Dejar de Seguir */,
                                                            ),
                                                            icon: Icon(
                                                              Icons
                                                                  .person_remove_rounded,
                                                              size: 18,
                                                            ),
                                                            options:
                                                                FFButtonOptions(
                                                              width: 110,
                                                              height: 35,
                                                              color: Color(
                                                                  0xFF0010A0),
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 0, 0, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      final chatsCreateData = {
                                                        ...createChatsRecordData(
                                                          userA:
                                                              currentUserReference,
                                                          userB:
                                                              perfilTodosUsersRecord
                                                                  .reference,
                                                        ),
                                                        'users': [
                                                          currentUserReference
                                                        ],
                                                      };
                                                      var chatsRecordReference =
                                                          ChatsRecord.collection
                                                              .doc();
                                                      await chatsRecordReference
                                                          .set(chatsCreateData);
                                                      newChatPerfilMovil = ChatsRecord
                                                          .getDocumentFromData(
                                                              chatsCreateData,
                                                              chatsRecordReference);

                                                      final chatsUpdateData = {
                                                        'users': FieldValue
                                                            .arrayUnion([
                                                          perfilTodosUsersRecord
                                                              .reference
                                                        ]),
                                                      };
                                                      await newChatPerfilMovil!
                                                          .reference
                                                          .update(
                                                              chatsUpdateData);

                                                      context.pushNamed(
                                                        'ChatPage',
                                                        queryParams: {
                                                          'chatUser':
                                                              serializeParam(
                                                            perfilTodosUsersRecord,
                                                            ParamType.Document,
                                                          ),
                                                          'chatRef':
                                                              serializeParam(
                                                            newChatPerfilMovil!
                                                                .reference,
                                                            ParamType
                                                                .DocumentReference,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          'chatUser':
                                                              perfilTodosUsersRecord,
                                                        },
                                                      );

                                                      setState(() {});
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'lltxa8t3' /* Mensaje */,
                                                    ),
                                                    icon: Icon(
                                                      Icons.chat_bubble,
                                                      size: 18,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: 110,
                                                      height: 35,
                                                      color: Color(0xFF0010A0),
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
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
                                                            'umlrh6y4' /* Publicaciones */,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '5tysvdjp' /* Seguidores */,
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
                                                              queryBuilder: (userPostRecord) =>
                                                                  userPostRecord.orderBy(
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
                                                                                          child: Container(
                                                                                            width: 40,
                                                                                            height: 40,
                                                                                            clipBehavior: Clip.antiAlias,
                                                                                            decoration: BoxDecoration(
                                                                                              shape: BoxShape.circle,
                                                                                            ),
                                                                                            child: CachedNetworkImage(
                                                                                              imageUrl: valueOrDefault<String>(
                                                                                                perfilTodosUsersRecord.photoUrl,
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
                                                                                        perfilTodosUsersRecord.nameUser!,
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
                                                                                                if (!columnUserPostRecord.likes!.toList().contains(currentUserReference))
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(0, 0),
                                                                                                    child: InkWell(
                                                                                                      onTap: () async {
                                                                                                        final userPostUpdateData = {
                                                                                                          'likes': FieldValue.arrayUnion([currentUserReference]),
                                                                                                        };
                                                                                                        await columnUserPostRecord.reference.update(userPostUpdateData);
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.favorite_border_rounded,
                                                                                                        color: FlutterFlowTheme.of(context).customColor3,
                                                                                                        size: 25,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                if (columnUserPostRecord.likes!.toList().contains(currentUserReference))
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(0, 0),
                                                                                                    child: InkWell(
                                                                                                      onTap: () async {
                                                                                                        final userPostUpdateData = {
                                                                                                          'likes': FieldValue.arrayRemove([currentUserReference]),
                                                                                                        };
                                                                                                        await columnUserPostRecord.reference.update(userPostUpdateData);
                                                                                                      },
                                                                                                      child: Icon(
                                                                                                        Icons.favorite_rounded,
                                                                                                        color: Color(0xFFFF0000),
                                                                                                        size: 25,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '0obb1lqm' /* 2,493 */,
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
                                                                queryBuilder: (usersRecord) => usersRecord.where(
                                                                    'Seguidores',
                                                                    arrayContains: widget
                                                                        .userReferens!
                                                                        .reference),
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
                                                                            queryParams:
                                                                                {
                                                                              'userReferens': serializeParam(
                                                                                columnUsersRecord,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'userReferens': columnUsersRecord,
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
                                                                                  InkWell(
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'PerfilTodos',
                                                                                        queryParams: {
                                                                                          'userReferens': serializeParam(
                                                                                            columnUsersRecord,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'userReferens': columnUsersRecord,
                                                                                          kTransitionInfoKey: TransitionInfo(
                                                                                            hasTransition: true,
                                                                                            transitionType: PageTransitionType.bottomToTop,
                                                                                            duration: Duration(milliseconds: 200),
                                                                                          ),
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Row(
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
                      ],
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
