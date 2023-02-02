import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/menu_izquierdo_widget.dart';
import '../flutter_flow/chat/index.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllChatWidget extends StatefulWidget {
  const AllChatWidget({Key? key}) : super(key: key);

  @override
  _AllChatWidgetState createState() => _AllChatWidgetState();
}

class _AllChatWidgetState extends State<AllChatWidget> {
  ChatsRecord? newChat;
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
              color: Color(0xFF000310),
            ),
            child: MenuIzquierdoWidget(),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imageneshomednt/gif03.gif',
                  ).image,
                ),
                gradient: LinearGradient(
                  colors: [
                    FlutterFlowTheme.of(context).primaryColor,
                    FlutterFlowTheme.of(context).secondaryColor
                  ],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0, -1),
                  end: AlignmentDirectional(0, 1),
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
                        constraints: BoxConstraints(
                          maxWidth: 500,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              '',
                            ).image,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 1,
                              constraints: BoxConstraints(
                                maxWidth: 500,
                              ),
                              decoration: BoxDecoration(),
                              child: DefaultTabController(
                                length: 2,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    TabBar(
                                      labelColor: Color(0xFF00FFE3),
                                      unselectedLabelColor: Color(0xFF02645A),
                                      labelStyle:
                                          FlutterFlowTheme.of(context).title3,
                                      indicatorColor: Color(0xFF00FFE3),
                                      indicatorWeight: 2,
                                      tabs: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 5, 0),
                                              child: Icon(
                                                Icons.perm_identity,
                                              ),
                                            ),
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'hcktb70c' /* Mensajes */,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 5, 0),
                                              child: Icon(
                                                Icons.person_add_outlined,
                                              ),
                                            ),
                                            Tab(
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '5alpa3wx' /* Usuarios */,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(12, 12, 12, 0),
                                              child: StreamBuilder<
                                                  List<ChatsRecord>>(
                                                stream: queryChatsRecord(
                                                  queryBuilder: (chatsRecord) =>
                                                      chatsRecord
                                                          .where('users',
                                                              arrayContains:
                                                                  currentUserReference)
                                                          .orderBy(
                                                              'last_message_time',
                                                              descending: true),
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
                                                  List<ChatsRecord>
                                                      listViewChatsRecordList =
                                                      snapshot.data!;
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewChatsRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewChatsRecord =
                                                          listViewChatsRecordList[
                                                              listViewIndex];
                                                      return StreamBuilder<
                                                          FFChatInfo>(
                                                        stream: FFChatManager
                                                            .instance
                                                            .getChatInfo(
                                                                chatRecord:
                                                                    listViewChatsRecord),
                                                        builder: (context,
                                                            snapshot) {
                                                          final chatInfo = snapshot
                                                                  .data ??
                                                              FFChatInfo(
                                                                  listViewChatsRecord);
                                                          return FFChatPreview(
                                                            onTap: () => context
                                                                .pushNamed(
                                                              'ChatPage',
                                                              queryParams: {
                                                                'chatUser':
                                                                    serializeParam(
                                                                  chatInfo.otherUsers
                                                                              .length ==
                                                                          1
                                                                      ? chatInfo
                                                                          .otherUsersList
                                                                          .first
                                                                      : null,
                                                                  ParamType
                                                                      .Document,
                                                                ),
                                                                'chatRef':
                                                                    serializeParam(
                                                                  chatInfo
                                                                      .chatRecord
                                                                      .reference,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'chatUser': chatInfo
                                                                            .otherUsers
                                                                            .length ==
                                                                        1
                                                                    ? chatInfo
                                                                        .otherUsersList
                                                                        .first
                                                                    : null,
                                                              },
                                                            ),
                                                            lastChatText: chatInfo
                                                                .chatPreviewMessage(),
                                                            lastChatTime:
                                                                listViewChatsRecord
                                                                    .lastMessageTime,
                                                            seen: listViewChatsRecord
                                                                .lastMessageSeenBy!
                                                                .contains(
                                                                    currentUserReference),
                                                            title: chatInfo
                                                                .chatPreviewTitle(),
                                                            userProfilePic: chatInfo
                                                                .chatPreviewPic(),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternateTwo20,
                                                            unreadColor: Color(
                                                                0xFF00FF50),
                                                            titleTextStyle:
                                                                GoogleFonts
                                                                    .getFont(
                                                              'DM Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14,
                                                            ),
                                                            dateTextStyle:
                                                                GoogleFonts
                                                                    .getFont(
                                                              'DM Sans',
                                                              color: Color(
                                                                  0xFF00FFE3),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 12,
                                                            ),
                                                            previewTextStyle:
                                                                GoogleFonts
                                                                    .getFont(
                                                              'DM Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 12,
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        3,
                                                                        3,
                                                                        3,
                                                                        3),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => Container(
                                              constraints: BoxConstraints(
                                                maxWidth: 500,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 18, 12, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ofuv3vt2' /* Usuarios Conectados */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title2,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'axysanxu' /* Seleccione un usuario para cha... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  StreamBuilder<
                                                      List<UsersRecord>>(
                                                    stream: queryUsersRecord(
                                                      limit: 30,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<UsersRecord>
                                                          listViewUsersRecordList =
                                                          snapshot.data!
                                                              .where((u) =>
                                                                  u.uid !=
                                                                  currentUserUid)
                                                              .toList();
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            listViewUsersRecordList
                                                                .length,
                                                        itemBuilder: (context,
                                                            listViewIndex) {
                                                          final listViewUsersRecord =
                                                              listViewUsersRecordList[
                                                                  listViewIndex];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            12,
                                                                            12,
                                                                            0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 2,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    height: 70,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .white,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              0,
                                                                          color:
                                                                              Color(0xFFDBE2E7),
                                                                          offset: Offset(
                                                                              0,
                                                                              2),
                                                                        )
                                                                      ],
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Card(
                                                                            clipBehavior:
                                                                                Clip.antiAliasWithSaveLayer,
                                                                            color:
                                                                                Color(0xFF4E39F9),
                                                                            elevation:
                                                                                8,
                                                                            shape:
                                                                                RoundedRectangleBorder(
                                                                              borderRadius: BorderRadius.circular(40),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                              child: Container(
                                                                                width: 50,
                                                                                height: 50,
                                                                                clipBehavior: Clip.antiAlias,
                                                                                decoration: BoxDecoration(
                                                                                  shape: BoxShape.circle,
                                                                                ),
                                                                                child: Image.network(
                                                                                  listViewUsersRecord.photoUrl!,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  listViewUsersRecord.displayName!,
                                                                                  style: FlutterFlowTheme.of(context).title3.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        color: Color(0xFF000030),
                                                                                        fontSize: 16,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                                Text(
                                                                                  listViewUsersRecord.nameUser!,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: FlutterFlowTheme.of(context).backgroundComponents,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.end,
                                                                                children: [
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 30,
                                                                                    borderWidth: 1,
                                                                                    buttonSize: 60,
                                                                                    icon: Icon(
                                                                                      Icons.message,
                                                                                      color: Color(0xFF002AF1),
                                                                                      size: 30,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      final chatsCreateData = {
                                                                                        ...createChatsRecordData(
                                                                                          userA: currentUserReference,
                                                                                          userB: listViewUsersRecord.reference,
                                                                                        ),
                                                                                        'users': [
                                                                                          currentUserReference
                                                                                        ],
                                                                                      };
                                                                                      var chatsRecordReference = ChatsRecord.collection.doc();
                                                                                      await chatsRecordReference.set(chatsCreateData);
                                                                                      newChat = ChatsRecord.getDocumentFromData(chatsCreateData, chatsRecordReference);

                                                                                      final chatsUpdateData = {
                                                                                        'users': FieldValue.arrayUnion([
                                                                                          listViewUsersRecord.reference
                                                                                        ]),
                                                                                      };
                                                                                      await newChat!.reference.update(chatsUpdateData);

                                                                                      context.pushNamed(
                                                                                        'ChatPage',
                                                                                        queryParams: {
                                                                                          'chatUser': serializeParam(
                                                                                            listViewUsersRecord,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                          'chatRef': serializeParam(
                                                                                            newChat!.reference,
                                                                                            ParamType.DocumentReference,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'chatUser': listViewUsersRecord,
                                                                                        },
                                                                                      );

                                                                                      setState(() {});
                                                                                    },
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
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
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
    );
  }
}
