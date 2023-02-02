import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UsuariosChatWidget extends StatefulWidget {
  const UsuariosChatWidget({Key? key}) : super(key: key);

  @override
  _UsuariosChatWidgetState createState() => _UsuariosChatWidgetState();
}

class _UsuariosChatWidgetState extends State<UsuariosChatWidget> {
  ChatsRecord? newChat;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 18, 12, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                FFLocalizations.of(context).getText(
                  'iwa8c625' /* Usuarios Conectados */,
                ),
                style: FlutterFlowTheme.of(context).subtitle1.override(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                    ),
              ),
              Text(
                FFLocalizations.of(context).getText(
                  'oxq78wfk' /* Seleccione un amigo para chate... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Roboto Condensed',
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ],
          ),
        ),
        StreamBuilder<List<UsersRecord>>(
          stream: queryUsersRecord(
            limit: 30,
          ),
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
            List<UsersRecord> listViewUsersRecordList =
                snapshot.data!.where((u) => u.uid != currentUserUid).toList();
            return ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listViewUsersRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewUsersRecord =
                    listViewUsersRecordList[listViewIndex];
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0,
                                color: Color(0xFFDBE2E7),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: Color(0xFF4E39F9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        2, 2, 2, 2),
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
                                      8, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          context.pushNamed(
                                            'PerfilTodos',
                                            queryParams: {
                                              'userReferens': serializeParam(
                                                listViewUsersRecord,
                                                ParamType.Document,
                                              ),
                                            }.withoutNulls,
                                            extra: <String, dynamic>{
                                              'userReferens':
                                                  listViewUsersRecord,
                                            },
                                          );
                                        },
                                        child: Text(
                                          listViewUsersRecord.displayName!,
                                          style: FlutterFlowTheme.of(context)
                                              .title3
                                              .override(
                                                fontFamily: 'Roboto',
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        listViewUsersRecord.nameUser!,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8, 0),
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
                                                userB: listViewUsersRecord
                                                    .reference,
                                              ),
                                              'users': [currentUserReference],
                                            };
                                            var chatsRecordReference =
                                                ChatsRecord.collection.doc();
                                            await chatsRecordReference
                                                .set(chatsCreateData);
                                            newChat =
                                                ChatsRecord.getDocumentFromData(
                                                    chatsCreateData,
                                                    chatsRecordReference);

                                            final chatsUpdateData = {
                                              'users': FieldValue.arrayUnion([
                                                listViewUsersRecord.reference
                                              ]),
                                            };
                                            await newChat!.reference
                                                .update(chatsUpdateData);

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
    );
  }
}
