import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EliminarPosWidget extends StatefulWidget {
  const EliminarPosWidget({
    Key? key,
    this.userPost,
  }) : super(key: key);

  final DocumentReference? userPost;

  @override
  _EliminarPosWidgetState createState() => _EliminarPosWidgetState();
}

class _EliminarPosWidgetState extends State<EliminarPosWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 500,
                  maxHeight: 280,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Color(0x3B1D2429),
                      offset: Offset(0, -3),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await widget.userPost!.delete();
                            context.pop();
                          },
                          text: FFLocalizations.of(context).getText(
                            '7w60sz0m' /* Eliminar este Post */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 60,
                            color: Color(0xFFFF5963),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pop();
                        },
                        text: FFLocalizations.of(context).getText(
                          'gvzgy048' /* Cancelar */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 60,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
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
    );
  }
}
