import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreandoCuentaWidget extends StatefulWidget {
  const CreandoCuentaWidget({Key? key}) : super(key: key);

  @override
  _CreandoCuentaWidgetState createState() => _CreandoCuentaWidgetState();
}

class _CreandoCuentaWidgetState extends State<CreandoCuentaWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 4000));

      context.pushNamed('EnviarSolicitudDNT');
    });

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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/meduza_(1).jpg',
              ).image,
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
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 0, 30, 20),
                                child: Image.network(
                                  'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imageneshomednt/loading-37%20(1).gif',
                                  height: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: AuthUserStreamWidget(
                                  builder: (context) => GradientText(
                                    'Bienvenido ${currentUserDisplayName}.',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context).title2,
                                    colors: [
                                      Color(0xFF00BD11),
                                      Color(0xFF00FFE2)
                                    ],
                                    gradientDirection: GradientDirection.ltr,
                                    gradientType: GradientType.linear,
                                  ),
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'g9k4gjc8' /* ESTAMOS CREANDO SU CUENTA */,
                                ),
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title2
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '1pm5d5qk' /* Un momento por favor... */,
                                  ),
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 500,
                            height: 90,
                            child: Stack(
                              alignment: AlignmentDirectional(0, 0),
                              children: [
                                ClipRect(
                                  child: ImageFiltered(
                                    imageFilter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 10,
                                      child: Container(
                                        width: 500,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Color(0xC1000030),
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 8,
                                              color: Color(0x2C000030),
                                              offset: Offset(2, 2),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Image.asset(
                                    'assets/images/dnt_soloo.png',
                                    width: 300,
                                    fit: BoxFit.cover,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
