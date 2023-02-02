import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class FunnnelWidget extends StatefulWidget {
  const FunnnelWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final String? user;

  @override
  _FunnnelWidgetState createState() => _FunnnelWidgetState();
}

class _FunnnelWidgetState extends State<FunnnelWidget> {
  ScrollController? columnController;
  ScrollController? rowController;
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;
  bool mouseRegionHovered7 = false;
  bool mouseRegionHovered10 = false;
  bool mouseRegionHovered11 = false;
  bool mouseRegionHovered8 = false;
  bool mouseRegionHovered9 = false;
  bool mouseRegionHovered12 = false;
  bool mouseRegionHovered13 = false;
  bool mouseRegionHovered14 = false;
  bool mouseRegionHovered15 = false;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    columnController = ScrollController();
    rowController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    columnController?.dispose();
    rowController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PipRecord>>(
      stream: queryPipRecord(
        queryBuilder: (pipRecord) =>
            pipRecord.where('Direcion_URL', isEqualTo: widget.user),
        singleRecord: true,
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
        List<PipRecord> funnnelPipRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final funnnelPipRecord =
            funnnelPipRecordList.isNotEmpty ? funnnelPipRecordList.first : null;
        return YoutubeFullScreenWrapper(
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFF021051),
            body: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  alignment: AlignmentDirectional(0, 1),
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0x81021051),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/meduza_(1).jpg',
                          ).image,
                        ),
                      ),
                      child: SingleChildScrollView(
                        controller: columnController,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: 800,
                                ),
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 40, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 20, 12, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ws0lslvs' /* DIGITAL */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          fontSize: 40,
                                                        ),
                                              ),
                                              GradientText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6aag1kvm' /* NETWORKERS */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title1
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xFFB956FF),
                                                          fontSize: 40,
                                                        ),
                                                colors: [
                                                  Color(0xFFB956FF),
                                                  Color(0xFF00FFD7)
                                                ],
                                                gradientDirection:
                                                    GradientDirection.ltr,
                                                gradientType:
                                                    GradientType.linear,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '24i0q0cd' /* TEAM */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 40,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 600,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 4),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ni9ehg9a' /* El Equipo Digital Networkers, ... */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 4,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFFCFD4FC),
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 4),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'd0dy1h0b' /* Visualiza y aterriza los negoc... */,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                          maxLines: 4,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFFCFD4FC),
                                                              ),
                                                        ),
                                                      ),
                                                      GradientText(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b955ooce' /* ¡Se Parte de nuestra comunidad... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title2,
                                                        colors: [
                                                          Color(0xFFB956FF),
                                                          Color(0xFF00FFD7)
                                                        ],
                                                        gradientDirection:
                                                            GradientDirection
                                                                .ltr,
                                                        gradientType:
                                                            GradientType.linear,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0, 0),
                                                        child: Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 10,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0),
                                                          ),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxWidth: 400,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF06013B),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      12,
                                                                  color: Color(
                                                                      0x29B956FF),
                                                                  spreadRadius:
                                                                      2,
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF06013B),
                                                                width: 2,
                                                              ),
                                                            ),
                                                            child:
                                                                FlutterFlowYoutubePlayer(
                                                              url:
                                                                  'https://www.youtube.com/watch?v=jhWGpceEA9E&t=1s',
                                                              autoPlay: false,
                                                              looping: true,
                                                              mute: false,
                                                              showControls:
                                                                  true,
                                                              showFullScreen:
                                                                  true,
                                                            ),
                                                          ),
                                                        ),
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
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 4, 0),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 500,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Image.asset(
                                                    'assets/images/herramientas.png',
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'mt0h8mfv' /* HERRAMIENTAS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 18,
                                                      ),
                                                  colors: [
                                                    Color(0xFFB956FF),
                                                    Color(0xFF00FFD7)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '23s0dtwt' /* Esto te ofrecemos */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 2, 2, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2, 2, 0, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uelmwybo' /* Concentrémonos en la gratitud ... */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 4,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
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
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: 1100,
                                ),
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 10),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    controller: rowController,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ibxkt83c' /* Entrenamientos */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered1!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/entrenamientos.png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kb47bejd' /* Acceso a un área de entrenamie... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered1 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered1 = false);
                                          }),
                                        ),
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9650lqkg' /* Plan de Acción */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered2!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/plan_de_accion.png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7c32lq27' /* Sumérgete a un plan de acción,... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered2 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered2 = false);
                                          }),
                                        ),
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '4tlqbrdd' /* Constructor */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered3!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/funnels.png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iemezg6h' /* Potente constructor de funnels... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered3 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered3 = false);
                                          }),
                                        ),
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gzqjv1s6' /* Eventos */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered4!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/eventos.png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ay914avi' /* Accede a todos los eventos más... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered4 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered4 = false);
                                          }),
                                        ),
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9bcs0i1c' /* DiseñaThor */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered5!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/disenathor.png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3go2qqki' /* Sistema canvas para crear imag... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered5 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered5 = false);
                                          }),
                                        ),
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'iuh7uv88' /* Agenda Personal */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered6!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/agenda_(1).png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6fnfgs9i' /* Gestiona tu tiempo con nuestro... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered6 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered6 = false);
                                          }),
                                        ),
                                        MouseRegion(
                                          opaque: false,
                                          cursor: MouseCursor.defer ??
                                              MouseCursor.defer,
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 20),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFEBECFA),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 10, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'u8xkx093' /* Recursos */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      maxLines: 2,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .title3
                                                          .override(
                                                            fontFamily:
                                                                'Roboto',
                                                            color: Color(
                                                                0xFF000030),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 120,
                                                    child: Divider(
                                                      thickness: 1,
                                                      indent: 1,
                                                      color:
                                                          mouseRegionHovered7!
                                                              ? Color(
                                                                  0xFF0C24FE)
                                                              : Color(
                                                                  0x850C53FE),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                18, 12, 18, 8),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      child: Container(
                                                        width: 80,
                                                        height: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 4,
                                                              color: Color(
                                                                  0xFFCFD4FC),
                                                              offset:
                                                                  Offset(0, 4),
                                                            )
                                                          ],
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF0C24FE),
                                                              Color(0xFFB956FF)
                                                            ],
                                                            stops: [0, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      10,
                                                                      10,
                                                                      10),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            child: Image.asset(
                                                              'assets/images/descargables.png',
                                                              width: 50,
                                                              height: 50,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCFD4FC),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(8),
                                                        bottomRight:
                                                            Radius.circular(8),
                                                        topLeft:
                                                            Radius.circular(0),
                                                        topRight:
                                                            Radius.circular(0),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 8, 4, 8),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xbsv8rhe' /* Encuentra los recursos descarg... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 5,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Roboto Condensed',
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          onEnter: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered7 = true);
                                          }),
                                          onExit: ((event) async {
                                            setState(() =>
                                                mouseRegionHovered7 = false);
                                          }),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 4, 0),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 500,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Image.asset(
                                                    'assets/images/servicios.png',
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '5ytcka9w' /* USUARIOS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 18,
                                                      ),
                                                  colors: [
                                                    Color(0xFFB956FF),
                                                    Color(0xFF00FFD7)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'pgfjr1ty' /* Últimos usuarios registrados */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 2, 2, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2, 2, 0, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'exm5i4ko' /* Una comunidad con valor agrega... */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 4,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 10),
                              child: FutureBuilder<List<UsersRecord>>(
                                future: queryUsersRecordOnce(
                                  queryBuilder: (usersRecord) =>
                                      usersRecord.orderBy('created_time',
                                          descending: true),
                                  limit: 30,
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
                                  List<UsersRecord> rowUsersRecordList =
                                      snapshot.data!;
                                  return Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                        rowUsersRecordList.length, (rowIndex) {
                                      final rowUsersRecord =
                                          rowUsersRecordList[rowIndex];
                                      return Container(
                                        width: 110,
                                        height: 120,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(4, 0, 4, 0),
                                              child: Container(
                                                width: 110,
                                                height: 120,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 25, 0, 0),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 10,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    child: Container(
                                                      width: 110,
                                                      height: 130,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0xFF0C53FE),
                                                            Color(0xFFB956FF)
                                                          ],
                                                          stops: [0, 1],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  0, -1),
                                                          end:
                                                              AlignmentDirectional(
                                                                  0, 1),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(0, 25,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            10,
                                                                            4,
                                                                            0),
                                                                child: Text(
                                                                  rowUsersRecord
                                                                      .displayName!,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  maxLines: 1,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title3
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                        fontSize:
                                                                            11,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            StreamBuilder<
                                                                CodPaisesRecord>(
                                                              stream: CodPaisesRecord
                                                                  .getDocument(
                                                                      rowUsersRecord
                                                                          .iDPais!),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width: 50,
                                                                      height:
                                                                          50,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        color: Color(
                                                                            0xFF1900FF),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                final containerCodPaisesRecord =
                                                                    snapshot
                                                                        .data!;
                                                                return Container(
                                                                  width: 110,
                                                                  height: 35,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFFCFD4FC),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            4,
                                                                            0),
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              4,
                                                                          shape:
                                                                              const CircleBorder(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              image: DecorationImage(
                                                                                fit: BoxFit.cover,
                                                                                image: Image.network(
                                                                                  containerCodPaisesRecord.icono!,
                                                                                ).image,
                                                                              ),
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          containerCodPaisesRecord
                                                                              .pais!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: Color(0xFF021051),
                                                                                fontSize: 9,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, -1),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 10,
                                                shape: const CircleBorder(),
                                                child: Container(
                                                  width: 50,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        valueOrDefault<String>(
                                                          rowUsersRecord
                                                              .photoUrl,
                                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/user02.png',
                                                        ),
                                                      ).image,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0xFF0C53FE),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFF0C53FE),
                                                      width: 2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 80, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 4, 0),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 500,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Image.asset(
                                                    'assets/images/redsocial.png',
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gl6r6lvd' /* SOCIAL DNT */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 18,
                                                      ),
                                                  colors: [
                                                    Color(0xFFB956FF),
                                                    Color(0xFF00FFD7)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'v7dh1vx9' /* Noticias y novedades de los lí... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 2, 2, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2, 2, 0, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g4mbl911' /* Te entregamos un área espefífi... */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 4,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
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
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 40),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 250,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons.group,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '34c049ha' /* Testimonios */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 2, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '96x3tqa2' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .event_note_rounded,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'pqv0dcur' /* Eventos */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 2, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n0k5peml' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .add_road_sharp,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '8ibft20x' /* Noticias */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 2, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rr6ui3vt' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/telefono%20(1).png',
                                            ).image,
                                          ),
                                        ),
                                        child: Image.network(
                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/telefono%20(1).png',
                                          width: 280,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 250,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 350,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons.sms_outlined,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '7v5te0pl' /* Chat Privado */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 2, 0, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x044B39EF),
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'idlhew34' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 350,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .comment_rounded,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'innx7795' /* Comentarios */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 2, 0, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x044B39EF),
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ua9otl3i' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 350,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .favorite_border_rounded,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'v8p8e59b' /* Favoritos */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 2, 0, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x044B39EF),
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'koj3588l' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            if (responsiveVisibility(
                              context: context,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 0),
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 350,
                                        ),
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons.group,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'objdsut0' /* Testimonios */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 2, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sxri9ot6' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .event_note_rounded,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'm4220nx3' /* Eventos */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 2, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xpdxf67d' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .add_road_sharp,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'w1belp0v' /* Noticias */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 2, 2, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9jsw84be' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.end,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 20, 20, 20),
                                      child: Container(
                                        width: 300,
                                        height: 540,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/telefono%20(1).png',
                                            ).image,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 0, 20, 0),
                                      child: Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 350,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons.sms_outlined,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'cz7t1bal' /* Chat Privado */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 2, 0, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x044B39EF),
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rjoqpv9z' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 350,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .comment_rounded,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'ocmi7tll' /* Comentario */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 2, 0, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x044B39EF),
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rprnawlb' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 350,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Container(
                                                        width: 50,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(2,
                                                                      2, 2, 2),
                                                          child: Icon(
                                                            Icons
                                                                .favorite_border_rounded,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                            size: 30,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '044syj33' /* Favoritos */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2, 2, 0, 5),
                                                      child: Container(
                                                        width: 110,
                                                        height: 5,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Color(0x044B39EF),
                                                              Color(0xFF00FFD8),
                                                              Color(0x044B39EF)
                                                            ],
                                                            stops: [0, 1, 1],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    1, -0.98),
                                                            end:
                                                                AlignmentDirectional(
                                                                    -1, 0.98),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 4, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g12nggo4' /* Te entregamos un área espefífi... */,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 4,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
                                                                ),
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
                                  ],
                                ),
                              ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: 1000,
                              ),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x000C53FE),
                                    Color(0x44B956FF)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 40, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 4, 0),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 500,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 4),
                                                          child: Image.asset(
                                                            'assets/images/businness.png',
                                                            width: 80,
                                                            height: 80,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        GradientText(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xpx7raoa' /* NEGOCIOS */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title2
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 18,
                                                              ),
                                                          colors: [
                                                            Color(0xFFB956FF),
                                                            Color(0xFF00FFD7)
                                                          ],
                                                          gradientDirection:
                                                              GradientDirection
                                                                  .ltr,
                                                          gradientType:
                                                              GradientType
                                                                  .linear,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'okdklb0a' /* Analisis, respaldo, investigac... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title2
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            2,
                                                                            5),
                                                                child:
                                                                    Container(
                                                                  width: 110,
                                                                  height: 5,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0xFF00FFD8),
                                                                        Color(
                                                                            0x044B39EF),
                                                                        Color(
                                                                            0x044B39EF)
                                                                      ],
                                                                      stops: [
                                                                        0,
                                                                        1,
                                                                        1
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1,
                                                                          -0.98),
                                                                      end: AlignmentDirectional(
                                                                          -1,
                                                                          0.98),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                child:
                                                                    Container(
                                                                  width: 110,
                                                                  height: 5,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0x044B39EF),
                                                                        Color(
                                                                            0xFF00FFD8),
                                                                        Color(
                                                                            0x044B39EF)
                                                                      ],
                                                                      stops: [
                                                                        0,
                                                                        1,
                                                                        1
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1,
                                                                          -0.98),
                                                                      end: AlignmentDirectional(
                                                                          -1,
                                                                          0.98),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '3zljueal' /* Visualizamos  y aterrizamos lo... */,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            maxLines: 4,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
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
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 20, 12, 40),
                                      child: StreamBuilder<EmpresasRecord>(
                                        stream: EmpresasRecord.getDocument(
                                            funnnelPipRecord!.iDEmpresa!),
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
                                          final rowEmpresasRecord =
                                              snapshot.data!;
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(4, 0, 4, 0),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 8,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                  ),
                                                  child: Container(
                                                    width: 250,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                      border: Border.all(
                                                        color:
                                                            Color(0x2800FFD8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          elevation: 8,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(20),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(20),
                                                              topRight: Radius
                                                                  .circular(0),
                                                            ),
                                                          ),
                                                          child: Container(
                                                            width: 80,
                                                            height: 80,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFF021051),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  blurRadius: 4,
                                                                  color: Color(
                                                                      0x33000000),
                                                                  offset:
                                                                      Offset(
                                                                          2, 2),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        20),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                              ),
                                                              shape: BoxShape
                                                                  .rectangle,
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          8,
                                                                          8,
                                                                          8),
                                                              child:
                                                                  Image.network(
                                                                rowEmpresasRecord
                                                                    .icono!,
                                                                width: 50,
                                                                height: 50,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        rowEmpresasRecord
                                                                            .nombre!,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Icon(
                                                                      Icons
                                                                          .keyboard_arrow_right,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 18,
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          5),
                                                                  child:
                                                                      Container(
                                                                    width: 110,
                                                                    height: 5,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        colors: [
                                                                          Color(
                                                                              0x044B39EF),
                                                                          Color(
                                                                              0xFF00FFD8),
                                                                          Color(
                                                                              0x044B39EF)
                                                                        ],
                                                                        stops: [
                                                                          0,
                                                                          1,
                                                                          1
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            1,
                                                                            -0.98),
                                                                        end: AlignmentDirectional(
                                                                            -1,
                                                                            0.98),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    rowEmpresasRecord
                                                                        .descripsion!,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto Condensed',
                                                                          fontSize:
                                                                              11,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
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
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x44B956FF),
                                    Color(0x000C53FE)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0, -1),
                                  end: AlignmentDirectional(0, 1),
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 40, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 4, 0),
                                                child: Container(
                                                  constraints: BoxConstraints(
                                                    maxWidth: 500,
                                                  ),
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 20, 0, 0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 4),
                                                          child: Image.asset(
                                                            'assets/images/wallet.png',
                                                            width: 80,
                                                            height: 80,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                        GradientText(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'f7b8io6q' /* WALLET DNT */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title2
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 18,
                                                              ),
                                                          colors: [
                                                            Color(0xFFB956FF),
                                                            Color(0xFF00FFD7)
                                                          ],
                                                          gradientDirection:
                                                              GradientDirection
                                                                  .ltr,
                                                          gradientType:
                                                              GradientType
                                                                  .linear,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'oom4zfbl' /* Espacio de intercambio garanti... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .title2
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            2,
                                                                            5),
                                                                child:
                                                                    Container(
                                                                  width: 110,
                                                                  height: 5,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0xFF00FFD8),
                                                                        Color(
                                                                            0x044B39EF),
                                                                        Color(
                                                                            0x044B39EF)
                                                                      ],
                                                                      stops: [
                                                                        0,
                                                                        1,
                                                                        1
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1,
                                                                          -0.98),
                                                                      end: AlignmentDirectional(
                                                                          -1,
                                                                          0.98),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                child:
                                                                    Container(
                                                                  width: 110,
                                                                  height: 5,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0x044B39EF),
                                                                        Color(
                                                                            0xFF00FFD8),
                                                                        Color(
                                                                            0x044B39EF)
                                                                      ],
                                                                      stops: [
                                                                        0,
                                                                        1,
                                                                        1
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1,
                                                                          -0.98),
                                                                      end: AlignmentDirectional(
                                                                          -1,
                                                                          0.98),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'gibluznu' /* Visualizamos  y aterrizamos lo... */,
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            maxLines: 4,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto Condensed',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .lineColor,
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
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 40),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(0),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                ))
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image:
                                                                Image.network(
                                                              '',
                                                            ).image,
                                                          ),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Image.network(
                                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/telefono%20(1).png',
                                                          width: 280,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .send_outlined,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'qxflot4h' /* Enviar */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '9gwi40qd' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .backup_outlined,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'cyw6cgm5' /* Recargar */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '9n6n78a2' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .cloud_download_outlined,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'rwabqv0b' /* Retirar */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'ju4sc47k' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(18, 0,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .security,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        's39cjbv8' /* Seguridad */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '6wtea8ew' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .group,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'dfvyh9ic' /* Usuarios */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'fhd4amdf' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .attach_money,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'mdsihfai' /* Moneda local */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '6yvp9cb1' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image:
                                                                Image.network(
                                                              '',
                                                            ).image,
                                                          ),
                                                          shape: BoxShape
                                                              .rectangle,
                                                        ),
                                                        child: Image.network(
                                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/telefono%20(1).png',
                                                          width: 280,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12,
                                                                    12, 0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .send_outlined,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'hn0azusm' /* Enviar */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'f66q1zcd' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_downward,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ealbtzgz' /* Recargar */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'qi7rt26p' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_upward,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'jjmlh1al' /* Retirar */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'rpgtyrd5' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 8,
                                                                    0, 0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .security,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '105lyy6w' /* Seguridad */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'kqtjvity' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .group,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '79a03ibe' /* Usuarios */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'q0abhn8j' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          2,
                                                                          0,
                                                                          8),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            4),
                                                                    child: Icon(
                                                                      Icons
                                                                          .attach_money,
                                                                      color: Color(
                                                                          0xFF00FFD8),
                                                                      size: 35,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            2),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '1j36ghib' /* Moneda local */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            5),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          110,
                                                                      height: 5,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        gradient:
                                                                            LinearGradient(
                                                                          colors: [
                                                                            Color(0x044B39EF),
                                                                            Color(0xFF00FFD8),
                                                                            Color(0x044B39EF)
                                                                          ],
                                                                          stops: [
                                                                            0,
                                                                            1,
                                                                            1
                                                                          ],
                                                                          begin: AlignmentDirectional(
                                                                              1,
                                                                              -0.98),
                                                                          end: AlignmentDirectional(
                                                                              -1,
                                                                              0.98),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 250,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              4),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'af1y29fc' /* Te entregamos un área espefífi... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              fontSize: 12,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 4, 0),
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxWidth: 500,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Image.asset(
                                                    'assets/images/tel_(1).png',
                                                    width: 80,
                                                    height: 80,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                GradientText(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dv8ula2j' /* CONTACTOS */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 18,
                                                      ),
                                                  colors: [
                                                    Color(0xFFB956FF),
                                                    Color(0xFF00FFD7)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                                Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '94bpzike' /* Estamos siempre a tu servicio */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 2, 2, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    2, 2, 0, 5),
                                                        child: Container(
                                                          width: 110,
                                                          height: 5,
                                                          decoration:
                                                              BoxDecoration(
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                Color(
                                                                    0x044B39EF),
                                                                Color(
                                                                    0xFF00FFD8),
                                                                Color(
                                                                    0x044B39EF)
                                                              ],
                                                              stops: [0, 1, 1],
                                                              begin:
                                                                  AlignmentDirectional(
                                                                      1, -0.98),
                                                              end:
                                                                  AlignmentDirectional(
                                                                      -1, 0.98),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4c64vu65' /* Para tener una experincia unic... */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 4,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .lineColor,
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 80),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 8, 0),
                                    child: Container(
                                      width: 300,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0, -1),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 12),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 10,
                                                shape: const CircleBorder(),
                                                child: Container(
                                                  width: 80,
                                                  height: 80,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        funnnelPipRecord!
                                                            .photoDueno!,
                                                      ).image,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        blurRadius: 4,
                                                        color:
                                                            Color(0xFF0C53FE),
                                                        offset: Offset(0, 2),
                                                      )
                                                    ],
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFF0C53FE),
                                                      width: 2,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          GradientText(
                                            funnnelPipRecord!.nombreDueno!,
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  fontSize: 18,
                                                ),
                                            colors: [
                                              Color(0xFFB956FF),
                                              Color(0xFF00FFD7)
                                            ],
                                            gradientDirection:
                                                GradientDirection.ltr,
                                            gradientType: GradientType.linear,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 4, 0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 2, 2, 5),
                                                  child: Container(
                                                    width: 110,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFF00FFD8),
                                                          Color(0x044B39EF),
                                                          Color(0x044B39EF)
                                                        ],
                                                        stops: [0, 1, 1],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1, -0.98),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1, 0.98),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(2, 2, 0, 5),
                                                  child: Container(
                                                    width: 110,
                                                    height: 5,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0x044B39EF),
                                                          Color(0xFF00FFD8),
                                                          Color(0x044B39EF)
                                                        ],
                                                        stops: [0, 1, 1],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1, -0.98),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1, 0.98),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4, 0, 4, 0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '37kjkobx' /* Siempre estamos emosiados de c... */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Roboto',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 15, 0, 4),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    if (funnnelPipRecord!
                                                                .urlWhatsapp !=
                                                            null &&
                                                        funnnelPipRecord!
                                                                .urlWhatsapp !=
                                                            '')
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 5, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              await launchURL(
                                                                  funnnelPipRecord!
                                                                      .urlWhatsapp!);
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 10,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                              2,
                                                                              2),
                                                                    )
                                                                  ],
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      Color(
                                                                          0xFF00BD11),
                                                                      Color(
                                                                          0xFF003F04)
                                                                    ],
                                                                    stops: [
                                                                      0,
                                                                      1
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.34,
                                                                            -1),
                                                                    end: AlignmentDirectional(
                                                                        -0.34,
                                                                        1),
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border
                                                                      .all(
                                                                    color: mouseRegionHovered8!
                                                                        ? Color(
                                                                            0xFF00FFD8)
                                                                        : Color(
                                                                            0x00FFFFFF),
                                                                    width: 1,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          5,
                                                                          12,
                                                                          5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .whatsapp,
                                                                          color: mouseRegionHovered8!
                                                                              ? Color(0xFF00FFD8)
                                                                              : FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              20,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'iirva2o7' /* WhatsApp */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: mouseRegionHovered8! ? Color(0xFF00FFD8) : FlutterFlowTheme.of(context).primaryBtnText,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered8 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered8 =
                                                                  false);
                                                        }),
                                                      ),
                                                    if (funnnelPipRecord!
                                                                .telegram !=
                                                            null &&
                                                        funnnelPipRecord!
                                                                .telegram !=
                                                            '')
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 5, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              await launchURL(
                                                                  funnnelPipRecord!
                                                                      .telegram!);
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 10,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                              2,
                                                                              2),
                                                                    )
                                                                  ],
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternateTwo,
                                                                      Color(
                                                                          0xFF0044FF)
                                                                    ],
                                                                    stops: [
                                                                      0,
                                                                      1
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.34,
                                                                            -1),
                                                                    end: AlignmentDirectional(
                                                                        -0.34,
                                                                        1),
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border
                                                                      .all(
                                                                    color: mouseRegionHovered9!
                                                                        ? Color(
                                                                            0xFF00FFD8)
                                                                        : Color(
                                                                            0x00FFFFFF),
                                                                    width: 1,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          5,
                                                                          12,
                                                                          5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .telegramPlane,
                                                                          color: mouseRegionHovered9!
                                                                              ? Color(0xFF00FFD8)
                                                                              : FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              20,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '64q4l4ac' /* Telegram */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: mouseRegionHovered9! ? Color(0xFF00FFD8) : FlutterFlowTheme.of(context).primaryBtnText,
                                                                              fontSize: 14,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered9 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered9 =
                                                                  false);
                                                        }),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 20),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    if (funnnelPipRecord!
                                                                .facebook !=
                                                            null &&
                                                        funnnelPipRecord!
                                                                .facebook !=
                                                            '')
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 5, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              await launchURL(
                                                                  funnnelPipRecord!
                                                                      .facebook!);
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 10,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                              2,
                                                                              2),
                                                                    )
                                                                  ],
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      Color(
                                                                          0xFF0044FF),
                                                                      Color(
                                                                          0xFF0000FF)
                                                                    ],
                                                                    stops: [
                                                                      0,
                                                                      1
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.34,
                                                                            -1),
                                                                    end: AlignmentDirectional(
                                                                        -0.34,
                                                                        1),
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border
                                                                      .all(
                                                                    color: mouseRegionHovered10!
                                                                        ? Color(
                                                                            0xFF00FFD8)
                                                                        : Color(
                                                                            0x00FFFFFF),
                                                                    width: 1,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          5,
                                                                          12,
                                                                          5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .facebook,
                                                                          color: mouseRegionHovered10!
                                                                              ? Color(0xFF00FFD8)
                                                                              : Colors.white,
                                                                          size:
                                                                              20,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'lwb4rymw' /* Facebook */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: mouseRegionHovered10! ? Color(0xFF00FFD8) : Colors.white,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered10 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered10 =
                                                                  false);
                                                        }),
                                                      ),
                                                    if (funnnelPipRecord!
                                                                .instagram !=
                                                            null &&
                                                        funnnelPipRecord!
                                                                .instagram !=
                                                            '')
                                                      MouseRegion(
                                                        opaque: false,
                                                        cursor: MouseCursor
                                                                .defer ??
                                                            MouseCursor.defer,
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 5, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              await launchURL(
                                                                  funnnelPipRecord!
                                                                      .instagram!);
                                                            },
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 10,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          4,
                                                                      color: Color(
                                                                          0x33000000),
                                                                      offset:
                                                                          Offset(
                                                                              2,
                                                                              2),
                                                                    )
                                                                  ],
                                                                  gradient:
                                                                      LinearGradient(
                                                                    colors: [
                                                                      Color(
                                                                          0xFFFF00C6),
                                                                      Color(
                                                                          0xFFFF001D)
                                                                    ],
                                                                    stops: [
                                                                      0,
                                                                      1
                                                                    ],
                                                                    begin:
                                                                        AlignmentDirectional(
                                                                            0.34,
                                                                            -1),
                                                                    end: AlignmentDirectional(
                                                                        -0.34,
                                                                        1),
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  border: Border
                                                                      .all(
                                                                    color: mouseRegionHovered11!
                                                                        ? Color(
                                                                            0xFF00FFD8)
                                                                        : Color(
                                                                            0x00FFFFFF),
                                                                    width: 1,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          5,
                                                                          12,
                                                                          5),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FaIcon(
                                                                          FontAwesomeIcons
                                                                              .instagram,
                                                                          color: mouseRegionHovered11!
                                                                              ? Color(0xFF00FFD8)
                                                                              : Colors.white,
                                                                          size:
                                                                              20,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'p61bte7i' /* Instagram */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: mouseRegionHovered11! ? Color(0xFF00FFD8) : Colors.white,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        onEnter:
                                                            ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered11 =
                                                                  true);
                                                        }),
                                                        onExit: ((event) async {
                                                          setState(() =>
                                                              mouseRegionHovered11 =
                                                                  false);
                                                        }),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 40, 0, 80),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 4, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 2, 2, 5),
                                          child: Container(
                                            width: 150,
                                            height: 5,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF00FFD8),
                                                  Color(0x044B39EF),
                                                  Color(0x044B39EF)
                                                ],
                                                stops: [0, 1, 1],
                                                begin: AlignmentDirectional(
                                                    1, -0.98),
                                                end: AlignmentDirectional(
                                                    -1, 0.98),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2, 2, 0, 5),
                                          child: Container(
                                            width: 150,
                                            height: 5,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x044B39EF),
                                                  Color(0xFF00FFD8),
                                                  Color(0x044B39EF)
                                                ],
                                                stops: [0, 1, 1],
                                                begin: AlignmentDirectional(
                                                    1, -0.98),
                                                end: AlignmentDirectional(
                                                    -1, 0.98),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 8, 0, 0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '0jqlgojt' /* www.teamdnt.pro */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto Condensed',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                          ))
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 8,
                                shape: const CircleBorder(),
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF06013B),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.asset(
                                        'assets/images/ICONO.png',
                                      ).image,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x83B956FF),
                                        spreadRadius: 2,
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xFF00FFD8),
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 6,
                                    color: Color(0x83B956FF),
                                    spreadRadius: 2,
                                  )
                                ],
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFB956FF),
                                    Color(0xFF0C53FE)
                                  ],
                                  stops: [0, 1],
                                  begin: AlignmentDirectional(0.64, -1),
                                  end: AlignmentDirectional(-0.64, 1),
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: InkWell(
                                      onTap: () async {
                                        await columnController?.animateTo(
                                          0,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Container(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: mouseRegionHovered12!
                                              ? Color(0x2700FFD8)
                                              : Colors.transparent,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(100),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(100),
                                            topRight: Radius.circular(0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 8, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                                Icon(
                                                  Icons.home_rounded,
                                                  color: mouseRegionHovered12!
                                                      ? Color(0xFF00FFD8)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBtnText,
                                                  size: 20,
                                                ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e5p3iebp' /* INICIO */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: mouseRegionHovered12!
                                                              ? Color(
                                                                  0xFF00FFD8)
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                          fontSize: 14,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      setState(
                                          () => mouseRegionHovered12 = true);
                                    }),
                                    onExit: ((event) async {
                                      setState(
                                          () => mouseRegionHovered12 = false);
                                    }),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: InkWell(
                                      onTap: () async {
                                        await columnController?.animateTo(
                                          columnController!
                                              .position.maxScrollExtent,
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Container(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: mouseRegionHovered13!
                                              ? Color(0x2700FFD8)
                                              : Colors.transparent,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 8, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                                Icon(
                                                  Icons.phone,
                                                  color: mouseRegionHovered13!
                                                      ? Color(0xFF00FFD8)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBtnText,
                                                  size: 20,
                                                ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lvvhex5s' /* CONTACTO */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: mouseRegionHovered13!
                                                              ? Color(
                                                                  0xFF00FFD8)
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                          fontSize: 14,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      setState(
                                          () => mouseRegionHovered13 = true);
                                    }),
                                    onExit: ((event) async {
                                      setState(
                                          () => mouseRegionHovered13 = false);
                                    }),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed('Login');
                                      },
                                      child: Container(
                                        height: 55,
                                        decoration: BoxDecoration(
                                          color: mouseRegionHovered14!
                                              ? Color(0x2700FFD8)
                                              : Colors.transparent,
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 8, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                                Icon(
                                                  Icons.login,
                                                  color: mouseRegionHovered14!
                                                      ? Color(0xFF00FFD8)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBtnText,
                                                  size: 20,
                                                ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xgaw6f5r' /* ENTRAR */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: mouseRegionHovered14!
                                                              ? Color(
                                                                  0xFF00FFD8)
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                          fontSize: 14,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      setState(
                                          () => mouseRegionHovered14 = true);
                                    }),
                                    onExit: ((event) async {
                                      setState(
                                          () => mouseRegionHovered14 = false);
                                    }),
                                  ),
                                  MouseRegion(
                                    opaque: false,
                                    cursor:
                                        MouseCursor.defer ?? MouseCursor.defer,
                                    child: InkWell(
                                      onTap: () async {
                                        context.pushNamed(
                                          'Registro',
                                          queryParams: {
                                            'ref': serializeParam(
                                              funnnelPipRecord!.reference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType: PageTransitionType
                                                  .bottomToTop,
                                              duration:
                                                  Duration(milliseconds: 200),
                                            ),
                                          },
                                        );
                                      },
                                      child: Container(
                                        height: 55,
                                        constraints: BoxConstraints(
                                          maxHeight: 55,
                                        ),
                                        decoration: BoxDecoration(
                                          color: mouseRegionHovered15!
                                              ? Color(0x2700FFD8)
                                              : Colors.transparent,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(100),
                                            topLeft: Radius.circular(0),
                                            topRight: Radius.circular(100),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8, 0, 8, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                                Icon(
                                                  Icons.edit_outlined,
                                                  color: mouseRegionHovered15!
                                                      ? Color(0xFF00FFD8)
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBtnText,
                                                  size: 20,
                                                ),
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oxlfq1bf' /* REGISTRO */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: mouseRegionHovered15!
                                                              ? Color(
                                                                  0xFF00FFD8)
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                          fontSize: 14,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    onEnter: ((event) async {
                                      setState(
                                          () => mouseRegionHovered15 = true);
                                    }),
                                    onExit: ((event) async {
                                      setState(
                                          () => mouseRegionHovered15 = false);
                                    }),
                                  ),
                                ],
                              ),
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
        );
      },
    );
  }
}
