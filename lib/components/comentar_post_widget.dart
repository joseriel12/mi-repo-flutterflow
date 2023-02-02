import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ComentarPostWidget extends StatefulWidget {
  const ComentarPostWidget({
    Key? key,
    this.idPost,
  }) : super(key: key);

  final DocumentReference? idPost;

  @override
  _ComentarPostWidgetState createState() => _ComentarPostWidgetState();
}

class _ComentarPostWidgetState extends State<ComentarPostWidget> {
  TextEditingController? textFieldComentarioController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textFieldComentarioController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textFieldComentarioController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<UserPostRecord>(
      stream: UserPostRecord.getDocument(widget.idPost!),
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
        final columnUserPostRecord = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Container(
                        width: 45,
                        height: 45,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          currentUserPhoto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 20, 0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).lineColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Form(
                          key: formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 0, 0, 0),
                                  child: TextFormField(
                                    controller: textFieldComentarioController,
                                    onFieldSubmitted: (_) async {
                                      setState(() {
                                        textFieldComentarioController?.clear();
                                      });
                                    },
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'xu0hqiva' /* Comentar... */,
                                      ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: FlutterFlowTheme.of(context)
                                                .backgroundComponents,
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
                                      focusedErrorBorder: UnderlineInputBorder(
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
                                          color: FlutterFlowTheme.of(context)
                                              .backgroundComponents,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 60,
                                  icon: Icon(
                                    Icons.send,
                                    color: Color(0xFF002AF1),
                                    size: 30,
                                  ),
                                  onPressed: () async {
                                    final postComentariosCreateData =
                                        createPostComentariosRecordData(
                                      fechaComentario: getCurrentTimestamp,
                                      descripsionComentario:
                                          textFieldComentarioController!.text,
                                      user: currentUserReference,
                                      duenosComentario: true,
                                      idPost: columnUserPostRecord.reference,
                                    );
                                    await PostComentariosRecord.collection
                                        .doc()
                                        .set(postComentariosCreateData);

                                    final userPostUpdateData = {
                                      'num_comments': FieldValue.increment(1),
                                    };
                                    await columnUserPostRecord.reference
                                        .update(userPostUpdateData);
                                    setState(() {
                                      textFieldComentarioController?.clear();
                                    });
                                  },
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
        );
      },
    );
  }
}
