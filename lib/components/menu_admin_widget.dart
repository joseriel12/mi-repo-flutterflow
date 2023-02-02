import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuAdminWidget extends StatefulWidget {
  const MenuAdminWidget({Key? key}) : super(key: key);

  @override
  _MenuAdminWidgetState createState() => _MenuAdminWidgetState();
}

class _MenuAdminWidgetState extends State<MenuAdminWidget> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;

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
          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
          child: MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Icon(
                      Icons.home_outlined,
                      color: mouseRegionHovered1!
                          ? Color(0xFF00FFF5)
                          : FlutterFlowTheme.of(context).lineColor,
                      size: 24,
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'wj9drbxo' /* Dashboard */,
                    ),
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Roboto',
                          color: mouseRegionHovered1!
                              ? Color(0xFF00FFF5)
                              : FlutterFlowTheme.of(context).lineColor,
                        ),
                  ),
                ],
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
        MouseRegion(
          opaque: false,
          cursor: MouseCursor.defer ?? MouseCursor.defer,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                  child: Icon(
                    Icons.person_add_alt,
                    color: mouseRegionHovered2!
                        ? Color(0xFF00FFF5)
                        : FlutterFlowTheme.of(context).lineColor,
                    size: 24,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'rvh4t6dv' /* Gestor Usuarios */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Roboto',
                        color: mouseRegionHovered2!
                            ? Color(0xFF00FFF5)
                            : FlutterFlowTheme.of(context).lineColor,
                      ),
                ),
              ],
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                  child: Icon(
                    Icons.desktop_windows,
                    color: mouseRegionHovered3!
                        ? Color(0xFF00FFF5)
                        : FlutterFlowTheme.of(context).lineColor,
                    size: 24,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'yzt1g5ge' /* Gestor Interaz */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Roboto',
                        color: mouseRegionHovered3!
                            ? Color(0xFF00FFF5)
                            : FlutterFlowTheme.of(context).lineColor,
                      ),
                ),
              ],
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                  child: Icon(
                    Icons.account_balance_wallet_outlined,
                    color: mouseRegionHovered4!
                        ? Color(0xFF00FFF5)
                        : FlutterFlowTheme.of(context).lineColor,
                    size: 24,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    '0j9jtfy8' /* Gestor Wallet */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Roboto',
                        color: mouseRegionHovered4!
                            ? Color(0xFF00FFF5)
                            : FlutterFlowTheme.of(context).lineColor,
                      ),
                ),
              ],
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 8, 0, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                  child: Icon(
                    Icons.post_add,
                    color: mouseRegionHovered5!
                        ? Color(0xFF00FFF5)
                        : FlutterFlowTheme.of(context).lineColor,
                    size: 24,
                  ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'e0lief7l' /* Gestor Social */,
                  ),
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Roboto',
                        color: mouseRegionHovered5!
                            ? Color(0xFF00FFF5)
                            : FlutterFlowTheme.of(context).lineColor,
                      ),
                ),
              ],
            ),
          ),
          onEnter: ((event) async {
            setState(() => mouseRegionHovered5 = true);
          }),
          onExit: ((event) async {
            setState(() => mouseRegionHovered5 = false);
          }),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
          child: MouseRegion(
            opaque: false,
            cursor: MouseCursor.defer ?? MouseCursor.defer,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                    child: Icon(
                      Icons.logout,
                      color: mouseRegionHovered6!
                          ? Color(0xFF00FFF5)
                          : FlutterFlowTheme.of(context).lineColor,
                      size: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'vnnbp7e7' /* Desconectarse */,
                      ),
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Roboto',
                            color: mouseRegionHovered6!
                                ? Color(0xFF00FFF5)
                                : FlutterFlowTheme.of(context).lineColor,
                          ),
                    ),
                  ),
                ],
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
    );
  }
}
