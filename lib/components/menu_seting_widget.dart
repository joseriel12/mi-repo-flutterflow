import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuSetingWidget extends StatefulWidget {
  const MenuSetingWidget({Key? key}) : super(key: key);

  @override
  _MenuSetingWidgetState createState() => _MenuSetingWidgetState();
}

class _MenuSetingWidgetState extends State<MenuSetingWidget> {
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

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      context.goNamed(
                        'Perfil',
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
                        color: mouseRegionHovered1!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.perm_identity,
                              color: mouseRegionHovered1!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'a4ly2o9z' /* Mi Perfil */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered1!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
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
                        color: mouseRegionHovered2!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.rss_feed_sharp,
                              color: mouseRegionHovered2!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'zb1zqdv9' /* Social DNT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered2!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'Exchange',
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
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.account_balance_wallet_outlined,
                              color: mouseRegionHovered3!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'qyjaylt6' /* Wallet DNT */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered3!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
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
                        color: mouseRegionHovered4!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.business,
                              color: mouseRegionHovered4!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'elevb0e6' /* Negocios */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered4!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
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
                        color: mouseRegionHovered5!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.shopping_cart_rounded,
                              color: mouseRegionHovered5!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'f7vd9qc0' /* Servicios */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered5!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
              ),
            ],
          ),
          if (valueOrDefault<bool>(currentUserDocument?.isAdmin, false))
            AuthUserStreamWidget(
              builder: (context) => Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('PanelAdmin');

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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.admin_panel_settings_outlined,
                                  color: mouseRegionHovered6!
                                      ? Color(0xFF00FFF5)
                                      : FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                  size: 24,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      's59af55r' /* Admin */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: mouseRegionHovered6!
                                              ? Color(0xFF00FFF5)
                                              : FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          fontWeight: FontWeight.normal,
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
                  ),
                ],
              ),
            ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Ajustss');

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
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.settings_outlined,
                              color: mouseRegionHovered7!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '878r71ay' /* Ajustes */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered7!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: MouseRegion(
                  opaque: false,
                  cursor: MouseCursor.defer ?? MouseCursor.defer,
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().VisibilidadConfiguraciones = false;
                      });
                      GoRouter.of(context).prepareAuthEvent();
                      await signOut();

                      context.goNamedAuth('Login', mounted);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mouseRegionHovered8!
                            ? Color(0x2700FFF5)
                            : Colors.transparent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 6, 15, 6),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.logout,
                              color: mouseRegionHovered8!
                                  ? Color(0xFF00FFF5)
                                  : FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'd2we5p6o' /* Desconectarse */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Roboto',
                                      color: mouseRegionHovered8!
                                          ? Color(0xFF00FFF5)
                                          : FlutterFlowTheme.of(context)
                                              .lineColor,
                                      fontWeight: FontWeight.normal,
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
        ],
      ),
    );
  }
}
