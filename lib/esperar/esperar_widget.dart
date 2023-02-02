import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EsperarWidget extends StatefulWidget {
  const EsperarWidget({Key? key}) : super(key: key);

  @override
  _EsperarWidgetState createState() => _EsperarWidgetState();
}

class _EsperarWidgetState extends State<EsperarWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 4000));
      if (valueOrDefault<bool>(currentUserDocument?.isTeamDNT, false) == true) {
        context.pushNamed(
          'Dashboard',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 200),
            ),
          },
        );

        return;
      } else {
        context.pushNamed(
          'EnviarSolicitudDNT',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 200),
            ),
          },
        );

        return;
      }
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imageneshomednt/gif03.gif',
                ).image,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 500,
                      ),
                      decoration: BoxDecoration(),
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
                                    'Hola ${currentUserDisplayName}.',
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
                                  'b7ze30va' /* ESTAMOS VERIFICANDO SUS DATOS */,
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
                                    'a5cwc9qf' /* Un momento por favor... */,
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
                                              color: Color(0xC1000030),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
