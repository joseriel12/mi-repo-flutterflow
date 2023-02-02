import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuIzquierdoWidget extends StatefulWidget {
  const MenuIzquierdoWidget({Key? key}) : super(key: key);

  @override
  _MenuIzquierdoWidgetState createState() => _MenuIzquierdoWidgetState();
}

class _MenuIzquierdoWidgetState extends State<MenuIzquierdoWidget> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;
  bool mouseRegionHovered7 = false;
  bool mouseRegionHovered8 = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 50, 50, 50),
                      child: Image.asset(
                        'assets/images/Normal_Letras_Blancas.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      context.goNamed('Dashboard');

                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered1!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/home.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'tvtsrs5t' /* HOME */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered1!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered1 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered1 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });

                      context.pushNamed(
                        'Herramientas',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 200),
                          ),
                        },
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered2!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/herramientas.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'dbz1n0t1' /* HERRAMIENTAS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered2!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered2 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered2 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'Business',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 200),
                          ),
                        },
                      );

                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered3!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/businness.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'qgtia82p' /* NEGOCIOS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered3!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered3 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered3 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered4!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/wallet.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '82jb4igz' /* WALLET DNT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered4!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered4 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered4 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered5!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/redsocial.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'hywxzycm' /* SOCIAL DNT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered5!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered5 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered5 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'Servicios',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 200),
                          ),
                        },
                      );

                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered6!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/service_(1).png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'ky1p2xz4' /* SERVICIOS */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered6!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered6 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered6 = false);
                  }),
                ),
                MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered7!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 6, 12, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Image.asset(
                                'assets/images/soporte.png',
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'aelod4li' /* SOPORTE */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: mouseRegionHovered7!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onEnter: ((event) async {
                    setState(() => mouseRegionHovered7 = true);
                  }),
                  onExit: ((event) async {
                    setState(() => mouseRegionHovered7 = false);
                  }),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 20),
              child: MouseRegion(
                opaque: false,
                cursor: MouseCursor.defer ?? MouseCursor.defer,
                child: Container(
                  decoration: BoxDecoration(
                    color: mouseRegionHovered8!
                        ? Color(0x2700FFF5)
                        : Colors.transparent,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                    child: InkWell(
                      onTap: () async {
                        FFAppState().update(() {
                          FFAppState().VisibilidadConfiguraciones = false;
                        });
                        GoRouter.of(context).prepareAuthEvent();
                        await signOut();

                        context.goNamedAuth('Login', mounted);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.logout,
                            color: mouseRegionHovered8!
                                ? Color(0xFF00FFD8)
                                : FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '627l2po1' /* Salir */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Roboto',
                                        color: mouseRegionHovered8!
                                            ? Color(0xFF00FFD8)
                                            : FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                onEnter: ((event) async {
                  setState(() => mouseRegionHovered8 = true);
                }),
                onExit: ((event) async {
                  setState(() => mouseRegionHovered8 = false);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
