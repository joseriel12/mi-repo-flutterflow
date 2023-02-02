import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NoticiasDerechaWidget extends StatefulWidget {
  const NoticiasDerechaWidget({Key? key}) : super(key: key);

  @override
  _NoticiasDerechaWidgetState createState() => _NoticiasDerechaWidgetState();
}

class _NoticiasDerechaWidgetState extends State<NoticiasDerechaWidget> {
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
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: GradientText(
                  FFLocalizations.of(context).getText(
                    'juv3xjqk' /* ÚLTIMAS NOVEDADES */,
                  ),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Roboto',
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                      ),
                  colors: [Color(0xFFB956FF), Color(0xFF00FFD7)],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
            ],
          ),
        ),
        StreamBuilder<List<UserPostRecord>>(
          stream: queryUserPostRecord(
            queryBuilder: (userPostRecord) =>
                userPostRecord.orderBy('time_posted', descending: true),
            limit: 20,
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
            List<UserPostRecord> listViewUserPostRecordList = snapshot.data!;
            return ListView.builder(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listViewUserPostRecordList.length,
              itemBuilder: (context, listViewIndex) {
                final listViewUserPostRecord =
                    listViewUserPostRecordList[listViewIndex];
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                  child: StreamBuilder<UsersRecord>(
                    stream: UsersRecord.getDocument(
                        listViewUserPostRecord.postUser!),
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
                      final containerUsersRecord = snapshot.data!;
                      return Material(
                        color: Colors.transparent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0x2700FFD7),
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        valueOrDefault<String>(
                                          containerUsersRecord.photoUrl,
                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/user02.png',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            containerUsersRecord.displayName!,
                                            style: FlutterFlowTheme.of(context)
                                                .title3
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Text(
                                            containerUsersRecord.nameUser!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            color: Color(0xFF00FFD7),
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 8),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 2, 0, 0),
                                        child: Text(
                                          listViewUserPostRecord.postTitle!,
                                          maxLines: 2,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowMediaDisplay(
                                    path: listViewUserPostRecord.postPhoto!,
                                    imageBuilder: (path) => Image.network(
                                      path,
                                      width: 200,
                                      height: 130,
                                      fit: BoxFit.cover,
                                    ),
                                    videoPlayerBuilder: (path) =>
                                        FlutterFlowVideoPlayer(
                                      path: path,
                                      width: 200,
                                      height: 130,
                                      autoPlay: false,
                                      looping: false,
                                      showControls: false,
                                      allowFullScreen: false,
                                      allowPlaybackSpeedMenu: false,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .alternateTwo20,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 3, 2, 3),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFFFF0000),
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (!listViewUserPostRecord
                                                    .likes!
                                                    .toList()
                                                    .contains(
                                                        currentUserReference))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 4, 4, 4),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        final userPostUpdateData =
                                                            {
                                                          'likes': FieldValue
                                                              .arrayUnion([
                                                            currentUserReference
                                                          ]),
                                                        };
                                                        await listViewUserPostRecord
                                                            .reference
                                                            .update(
                                                                userPostUpdateData);
                                                      },
                                                      child: Icon(
                                                        Icons.favorite_border,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 18,
                                                      ),
                                                    ),
                                                  ),
                                                if (listViewUserPostRecord
                                                    .likes!
                                                    .toList()
                                                    .contains(
                                                        currentUserReference))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 4, 4, 4),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        final userPostUpdateData =
                                                            {
                                                          'likes': FieldValue
                                                              .arrayRemove([
                                                            currentUserReference
                                                          ]),
                                                        };
                                                        await listViewUserPostRecord
                                                            .reference
                                                            .update(
                                                                userPostUpdateData);
                                                      },
                                                      child: Icon(
                                                        Icons.favorite_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 18,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'wxrz6o40' /* 15 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 3, 2, 3),
                                          child: Card(
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            color: Color(0xFFFF0000),
                                            elevation: 4,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 4, 4, 4),
                                                  child: Icon(
                                                    Icons.message_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Text(
                                          listViewUserPostRecord.numComments!
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
