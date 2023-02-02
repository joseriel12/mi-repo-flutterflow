import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EncabezadoAdminWidget extends StatefulWidget {
  const EncabezadoAdminWidget({Key? key}) : super(key: key);

  @override
  _EncabezadoAdminWidgetState createState() => _EncabezadoAdminWidgetState();
}

class _EncabezadoAdminWidgetState extends State<EncabezadoAdminWidget> {
  bool mouseRegionHovered = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.menu_open,
                    color: Color(0xFF00FFD8),
                    size: 40,
                  ),
                  onPressed: () async {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Material(
                      color: Colors.transparent,
                      elevation: 4,
                      shape: const CircleBorder(),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              valueOrDefault<String>(
                                currentUserPhoto,
                                'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                              ),
                            ).image,
                          ),
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xFF00231E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                ))
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            currentUserDisplayName,
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Roboto',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                ),
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'hockemcw' /* Administrador */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Roboto Condensed',
                              color: FlutterFlowTheme.of(context).lineColor,
                            ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: InkWell(
                        onTap: () async {
                          context.pushNamed('Dashboard');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                              child: Icon(
                                Icons.keyboard_arrow_right_rounded,
                                color: mouseRegionHovered!
                                    ? Color(0xFF00FFD8)
                                    : FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                size: 24,
                              ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'kfmcq35y' /* Dashboard */,
                              ),
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Roboto',
                                        color: mouseRegionHovered!
                                            ? Color(0xFF00FFD8)
                                            : FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                      ),
                            ),
                          ],
                        ),
                      ),
                      onEnter: ((event) async {
                        setState(() => mouseRegionHovered = true);
                      }),
                      onExit: ((event) async {
                        setState(() => mouseRegionHovered = false);
                      }),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24,
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'xh7b6lsu' /* Panel Admin */,
                          ),
                          style: FlutterFlowTheme.of(context).title2,
                        ),
                      ],
                    ),
                  ],
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.home_rounded,
                    color: Color(0xFF00FFD8),
                    size: 40,
                  ),
                  onPressed: () async {
                    context.pushNamed('Dashboard');
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }
}
