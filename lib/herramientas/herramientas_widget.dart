import '../components/menu_izquierdo_widget.dart';
import '../components/menu_seting_widget.dart';
import '../components/menu_superior_widget.dart';
import '../components/noticias_derecha_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HerramientasWidget extends StatefulWidget {
  const HerramientasWidget({Key? key}) : super(key: key);

  @override
  _HerramientasWidgetState createState() => _HerramientasWidgetState();
}

class _HerramientasWidgetState extends State<HerramientasWidget> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;
  bool mouseRegionHovered7 = false;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

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
      backgroundColor: Color(0xFF000923),
      drawer: Container(
        width: 200,
        child: Drawer(
          elevation: 16,
          child: Material(
            color: Colors.transparent,
            elevation: 10,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF021051),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    '',
                  ).image,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 30, 12, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () async {
                            scaffoldKey.currentState!.openEndDrawer();
                          },
                          child: Icon(
                            Icons.close,
                            color: Color(0xFF00FFF5),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MenuIzquierdoWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF06013B),
        automaticallyImplyLeading: false,
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 10, 12, 0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(),
              child: MenuSuperiorWidget(),
            ),
          ),
          centerTitle: true,
          expandedTitleScale: 1.0,
          titlePadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: InkWell(
          onTap: () async {
            FFAppState().update(() {
              FFAppState().VisibilidadConfiguraciones = false;
            });
          },
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      Material(
                        color: Colors.transparent,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                        child: Container(
                          width: 200,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x2006013B),
                                offset: Offset(4, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: MenuIzquierdoWidget(),
                          ),
                        ),
                      ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 850,
                                    ),
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 20, 12, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              color: Color(0x00000000),
                                              child: ExpandableNotifier(
                                                initialExpanded: true,
                                                child: ExpandablePanel(
                                                  header: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      GradientText(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bdju9a7y' /* HERRAMIENTAS Y RECURSOS */,
                                                        ),
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
                                                      Divider(
                                                        thickness: 1,
                                                        indent: 1,
                                                        color:
                                                            Color(0xFF00FFD8),
                                                      ),
                                                    ],
                                                  ),
                                                  collapsed: Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 30,
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10, 0, 0, 0),
                                                      child: Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'orkc4xw7' /* Conoce las herramientas en nue... */,
                                                        ),
                                                        maxLines: 2,
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
                                                  ),
                                                  expanded:
                                                      SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEBECFA),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'w0t4y4hy' /* Entrenamientos */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF000030),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 120,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          1,
                                                                      indent: 1,
                                                                      color: mouseRegionHovered1!
                                                                          ? Color(
                                                                              0xFF0C24FE)
                                                                          : Color(
                                                                              0x850C53FE),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18,
                                                                            12,
                                                                            18,
                                                                            18),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            80,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4,
                                                                              color: Color(0xFFCFD4FC),
                                                                              offset: Offset(0, 4),
                                                                            )
                                                                          ],
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF0C24FE),
                                                                              Color(0xFFB956FF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.98),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.98),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              10,
                                                                              10,
                                                                              10),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.asset(
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered1 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered1 =
                                                                    false);
                                                          }),
                                                        ),
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEBECFA),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'wq7q5c8a' /* Plan de Acción */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF000030),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 120,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          1,
                                                                      indent: 1,
                                                                      color: mouseRegionHovered2!
                                                                          ? Color(
                                                                              0xFF0C24FE)
                                                                          : Color(
                                                                              0x850C53FE),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18,
                                                                            12,
                                                                            18,
                                                                            18),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            80,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4,
                                                                              color: Color(0xFFCFD4FC),
                                                                              offset: Offset(0, 4),
                                                                            )
                                                                          ],
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF0C24FE),
                                                                              Color(0xFFB956FF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.98),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.98),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              10,
                                                                              10,
                                                                              10),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.asset(
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered2 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered2 =
                                                                    false);
                                                          }),
                                                        ),
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: InkWell(
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'ConstructorFunnels',
                                                                  extra: <
                                                                      String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .bottomToTop,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              200),
                                                                    ),
                                                                  },
                                                                );
                                                              },
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFEBECFA),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                ),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              10,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'fitmtxj2' /* Constructor */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title3
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: Color(0xFF000030),
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          120,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1,
                                                                        indent:
                                                                            1,
                                                                        color: mouseRegionHovered3!
                                                                            ? Color(0xFF0C24FE)
                                                                            : Color(0x850C53FE),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              18,
                                                                              12,
                                                                              18,
                                                                              18),
                                                                      child:
                                                                          Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            5,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              80,
                                                                          height:
                                                                              80,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            boxShadow: [
                                                                              BoxShadow(
                                                                                blurRadius: 4,
                                                                                color: Color(0xFFCFD4FC),
                                                                                offset: Offset(0, 4),
                                                                              )
                                                                            ],
                                                                            gradient:
                                                                                LinearGradient(
                                                                              colors: [
                                                                                Color(0xFF0C24FE),
                                                                                Color(0xFFB956FF)
                                                                              ],
                                                                              stops: [
                                                                                0,
                                                                                1
                                                                              ],
                                                                              begin: AlignmentDirectional(1, -0.98),
                                                                              end: AlignmentDirectional(-1, 0.98),
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(20),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10,
                                                                                10,
                                                                                10,
                                                                                10),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(10),
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
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered3 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered3 =
                                                                    false);
                                                          }),
                                                        ),
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEBECFA),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'ni4vn4vk' /* Agenda */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF000030),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 120,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          1,
                                                                      indent: 1,
                                                                      color: mouseRegionHovered4!
                                                                          ? Color(
                                                                              0xFF0C24FE)
                                                                          : Color(
                                                                              0x850C53FE),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18,
                                                                            12,
                                                                            18,
                                                                            18),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            80,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4,
                                                                              color: Color(0xFFCFD4FC),
                                                                              offset: Offset(0, 4),
                                                                            )
                                                                          ],
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF0C24FE),
                                                                              Color(0xFFB956FF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.98),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.98),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              10,
                                                                              10,
                                                                              10),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.asset(
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered4 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered4 =
                                                                    false);
                                                          }),
                                                        ),
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEBECFA),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'st9vd4m4' /* Eventos */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF000030),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 120,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          1,
                                                                      indent: 1,
                                                                      color: mouseRegionHovered5!
                                                                          ? Color(
                                                                              0xFF0C24FE)
                                                                          : Color(
                                                                              0x850C53FE),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18,
                                                                            12,
                                                                            18,
                                                                            18),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            80,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4,
                                                                              color: Color(0xFFCFD4FC),
                                                                              offset: Offset(0, 4),
                                                                            )
                                                                          ],
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF0C24FE),
                                                                              Color(0xFFB956FF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.98),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.98),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              10,
                                                                              10,
                                                                              10),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.asset(
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered5 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered5 =
                                                                    false);
                                                          }),
                                                        ),
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEBECFA),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '85prp81q' /* DiseñaThor */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF000030),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 120,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          1,
                                                                      indent: 1,
                                                                      color: mouseRegionHovered6!
                                                                          ? Color(
                                                                              0xFF0C24FE)
                                                                          : Color(
                                                                              0x850C53FE),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18,
                                                                            12,
                                                                            18,
                                                                            18),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            80,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4,
                                                                              color: Color(0xFFCFD4FC),
                                                                              offset: Offset(0, 4),
                                                                            )
                                                                          ],
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF0C24FE),
                                                                              Color(0xFFB956FF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.98),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.98),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              10,
                                                                              10,
                                                                              10),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.asset(
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered6 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered6 =
                                                                    false);
                                                          }),
                                                        ),
                                                        MouseRegion(
                                                          opaque: false,
                                                          cursor: MouseCursor
                                                                  .defer ??
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        0,
                                                                        10,
                                                                        20),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEBECFA),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'geko1rpm' /* Recursos */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          2,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                Color(0xFF000030),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 120,
                                                                    child:
                                                                        Divider(
                                                                      thickness:
                                                                          1,
                                                                      indent: 1,
                                                                      color: mouseRegionHovered7!
                                                                          ? Color(
                                                                              0xFF0C24FE)
                                                                          : Color(
                                                                              0x850C53FE),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            18,
                                                                            12,
                                                                            18,
                                                                            18),
                                                                    child:
                                                                        Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(20),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            80,
                                                                        height:
                                                                            80,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 4,
                                                                              color: Color(0xFFCFD4FC),
                                                                              offset: Offset(0, 4),
                                                                            )
                                                                          ],
                                                                          gradient:
                                                                              LinearGradient(
                                                                            colors: [
                                                                              Color(0xFF0C24FE),
                                                                              Color(0xFFB956FF)
                                                                            ],
                                                                            stops: [
                                                                              0,
                                                                              1
                                                                            ],
                                                                            begin:
                                                                                AlignmentDirectional(1, -0.98),
                                                                            end:
                                                                                AlignmentDirectional(-1, 0.98),
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              10,
                                                                              10,
                                                                              10),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            child:
                                                                                Image.asset(
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
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          onEnter:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered7 =
                                                                    true);
                                                          }),
                                                          onExit:
                                                              ((event) async {
                                                            setState(() =>
                                                                mouseRegionHovered7 =
                                                                    false);
                                                          }),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  theme: ExpandableThemeData(
                                                    tapHeaderToExpand: true,
                                                    tapBodyToExpand: false,
                                                    tapBodyToCollapse: false,
                                                    headerAlignment:
                                                        ExpandablePanelHeaderAlignment
                                                            .center,
                                                    hasIcon: true,
                                                    iconSize: 30,
                                                    iconColor:
                                                        Color(0xFF00FFD8),
                                                  ),
                                                ),
                                              ),
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
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x2006013B),
                                  offset: Offset(4, 0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: NoticiasDerechaWidget(),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              if (FFAppState().VisibilidadConfiguraciones)
                Align(
                  alignment: AlignmentDirectional(1, -1),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xFF06013B),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: MenuSetingWidget(),
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
