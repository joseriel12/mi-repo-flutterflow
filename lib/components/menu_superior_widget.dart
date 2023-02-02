import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MenuSuperiorWidget extends StatefulWidget {
  const MenuSuperiorWidget({Key? key}) : super(key: key);

  @override
  _MenuSuperiorWidgetState createState() => _MenuSuperiorWidgetState();
}

class _MenuSuperiorWidgetState extends State<MenuSuperiorWidget> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (responsiveVisibility(
            context: context,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                onTap: () async {
                  FFAppState().update(() {
                    FFAppState().VisibilidadConfiguraciones = false;
                  });
                  Scaffold.of(context).openDrawer();
                },
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: mouseRegionHovered1!
                      ? Color(0x280C53FE)
                      : Color(0x850C53FE),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: Icon(
                      Icons.menu,
                      color: mouseRegionHovered1!
                          ? Color(0xFF00FFD8)
                          : FlutterFlowTheme.of(context).primaryBtnText,
                      size: 24,
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
          if (responsiveVisibility(
            context: context,
            phone: false,
          ))
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                        child: Image.asset(
                          'assets/images/dnt_soloo.png',
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                      child: AuthUserStreamWidget(
                        builder: (context) => GradientText(
                          'Bienvenido ${currentUserDisplayName}.',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                          colors: [Color(0xFFB956FF), Color(0xFF00FFD7)],
                          gradientDirection: GradientDirection.ltr,
                          gradientType: GradientType.linear,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
              child: StreamBuilder<List<PipRecord>>(
                stream: queryPipRecord(
                  queryBuilder: (pipRecord) => pipRecord.where('id_User',
                      isEqualTo: currentUserReference),
                  limit: 3,
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
                  List<PipRecord> rowPipRecordList = snapshot.data!;
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children:
                        List.generate(rowPipRecordList.length, (rowIndex) {
                      final rowPipRecord = rowPipRecordList[rowIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(2, 0, 2, 0),
                        child: StreamBuilder<EmpresasRecord>(
                          stream: EmpresasRecord.getDocument(
                              rowPipRecord.iDEmpresa!),
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
                            final containerEmpresasRecord = snapshot.data!;
                            return Material(
                              color: Colors.transparent,
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary20,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    color: Color(0xFF00FFD8),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        if (rowPipRecord.estado == true) {
                                          await Clipboard.setData(ClipboardData(
                                              text: rowPipRecord.linkFunnel!));
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Enlace Copiado',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 2000),
                                              backgroundColor:
                                                  Color(0xFF06013B),
                                            ),
                                          );
                                          return;
                                        } else {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Solicitud en Verificacion',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title3
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 2000),
                                              backgroundColor:
                                                  Color(0xFF06013B),
                                            ),
                                          );
                                          return;
                                        }
                                      },
                                      child: Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Color(0x850C53FE),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 8, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFF000425),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.network(
                                                      containerEmpresasRecord
                                                          .icono!,
                                                    ).image,
                                                  ),
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (rowPipRecord.estado ??
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 4, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lmc4xfu0' /* Copiar Funnel */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize: 8,
                                                                  lineHeight: 1,
                                                                ),
                                                      ),
                                                    ),
                                                  if (!rowPipRecord.estado!)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 4, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b56evbbj' /* En Espera */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  fontSize: 8,
                                                                  lineHeight: 1,
                                                                ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    if ((rowPipRecord.estado ?? true) &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ))
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1, 0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 0, 4, 0),
                                            child: Text(
                                              rowPipRecord.linkFunnel!,
                                              maxLines: 1,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        fontSize: 8,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
            child: Material(
              color: Colors.transparent,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              child: Container(
                height: 35,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary20,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    AuthUserStreamWidget(
                      builder: (context) => Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          valueOrDefault<String>(
                            currentUserPhoto,
                            'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/user02.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                currentUserDisplayName,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                            ),
                            AuthUserStreamWidget(
                              builder: (context) => Text(
                                '@${valueOrDefault(currentUserDocument?.nameUser, '')}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Roboto Condensed',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    MouseRegion(
                      opaque: false,
                      cursor: MouseCursor.defer ?? MouseCursor.defer,
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (!FFAppState().VisibilidadConfiguraciones)
                              InkWell(
                                onTap: () async {
                                  FFAppState().update(() {
                                    FFAppState().VisibilidadConfiguraciones =
                                        true;
                                  });
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: mouseRegionHovered2!
                                      ? Color(0xFF00FFD8)
                                      : FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                  size: 24,
                                ),
                              ),
                            if (FFAppState().VisibilidadConfiguraciones)
                              InkWell(
                                onTap: () async {
                                  FFAppState().update(() {
                                    FFAppState().VisibilidadConfiguraciones =
                                        false;
                                  });
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_up_sharp,
                                  color: mouseRegionHovered2!
                                      ? Color(0xFF00FFD8)
                                      : FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                  size: 24,
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
