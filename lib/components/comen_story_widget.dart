import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComenStoryWidget extends StatefulWidget {
  const ComenStoryWidget({
    Key? key,
    this.story,
  }) : super(key: key);

  final UserHistoryRecord? story;

  @override
  _ComenStoryWidgetState createState() => _ComenStoryWidgetState();
}

class _ComenStoryWidgetState extends State<ComenStoryWidget> {
  TextEditingController? textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Align(
          alignment: AlignmentDirectional(0, 1),
          child: Material(
            color: Colors.transparent,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 380,
                maxHeight: 610,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).lineColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xC3000310),
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: StreamBuilder<UserHistoryRecord>(
                  stream:
                      UserHistoryRecord.getDocument(widget.story!.reference),
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
                    final columnUserHistoryRecord = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Container(
                                    width: 60,
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF00FFE3),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '787htnfx' /* Comments */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF000310),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                StreamBuilder<List<StoryComentsRecord>>(
                                  stream: queryStoryComentsRecord(
                                    queryBuilder: (storyComentsRecord) =>
                                        storyComentsRecord
                                            .where('userRelation',
                                                isEqualTo:
                                                    columnUserHistoryRecord
                                                        .user)
                                            .orderBy('fechaComents',
                                                descending: true),
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
                                    List<StoryComentsRecord>
                                        listViewStoryComentsRecordList =
                                        snapshot.data!;
                                    if (listViewStoryComentsRecordList
                                        .isEmpty) {
                                      return Center(
                                        child: Image.asset(
                                          'assets/images/commentsEmpty@2x.png',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          height: 300,
                                        ),
                                      );
                                    }
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewStoryComentsRecordList.length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewStoryComentsRecord =
                                            listViewStoryComentsRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 12, 0, 0),
                                          child: StreamBuilder<UsersRecord>(
                                            stream: UsersRecord.getDocument(
                                                listViewStoryComentsRecord
                                                    .userRelation!),
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
                                              final commentUsersRecord =
                                                  snapshot.data!;
                                              return Material(
                                                color: Colors.transparent,
                                                elevation: 4,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ),
                                                child: Container(
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 12, 8, 12),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        InkWell(
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'PerfilTodos',
                                                              queryParams: {
                                                                'userReferens':
                                                                    serializeParam(
                                                                  commentUsersRecord,
                                                                  ParamType
                                                                      .Document,
                                                                ),
                                                              }.withoutNulls,
                                                              extra: <String,
                                                                  dynamic>{
                                                                'userReferens':
                                                                    commentUsersRecord,
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
                                                          child: Container(
                                                            width: 40,
                                                            height: 40,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                            child:
                                                                Image.network(
                                                              valueOrDefault<
                                                                  String>(
                                                                commentUsersRecord
                                                                    .photoUrl,
                                                                'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
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
                                                                Text(
                                                                  commentUsersRecord
                                                                      .displayName!,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: Color(
                                                                            0xFF000310),
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                                  child: Text(
                                                                    listViewStoryComentsRecord
                                                                        .comentStory!,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              Color(0xC3000310),
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            4,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '9w8n4a59' /* Publicado */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText2
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Color(0xFF000310),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        dateTimeFormat(
                                                                          'relative',
                                                                          listViewStoryComentsRecord
                                                                              .fechaComents!,
                                                                          locale:
                                                                              FFLocalizations.of(context).languageCode,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 10,
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
                                              );
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  color: Color(0x3A000000),
                                  offset: Offset(0, 1),
                                )
                              ],
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 4, 0, 4),
                                    child: TextFormField(
                                      controller: textController,
                                      onFieldSubmitted: (_) async {
                                        setState(() {
                                          textController?.clear();
                                        });
                                      },
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'izbwj49r' /* Comentar... */,
                                        ),
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Roboto Condensed',
                                              color: Color(0xFF000310),
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: Color(0xFF000310),
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 4, 0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30,
                                    borderWidth: 1,
                                    buttonSize: 60,
                                    icon: Icon(
                                      Icons.send_rounded,
                                      color: Color(0xFF002BE7),
                                      size: 30,
                                    ),
                                    onPressed: () async {
                                      final storyComentsCreateData =
                                          createStoryComentsRecordData(
                                        storyRelation:
                                            columnUserHistoryRecord.reference,
                                        userRelation: currentUserReference,
                                        comentStory: textController!.text,
                                        fechaComents: getCurrentTimestamp,
                                      );
                                      await StoryComentsRecord.collection
                                          .doc()
                                          .set(storyComentsCreateData);

                                      final userHistoryUpdateData = {
                                        'numeroComentarios':
                                            FieldValue.increment(1),
                                      };
                                      await columnUserHistoryRecord.reference
                                          .update(userHistoryUpdateData);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
