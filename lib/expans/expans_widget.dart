import '../components/menu_izquierdo_widget.dart';
import '../components/menu_seting_widget.dart';
import '../components/menu_superior_widget.dart';
import '../components/noticias_derecha_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ExpansWidget extends StatefulWidget {
  const ExpansWidget({Key? key}) : super(key: key);

  @override
  _ExpansWidgetState createState() => _ExpansWidgetState();
}

class _ExpansWidgetState extends State<ExpansWidget> {
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
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 20, 12, 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              GradientText(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8efbpv82' /* SISTEMA DE EXPANSIÓN Y ENTRENA... */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                              Divider(
                                                thickness: 1,
                                                indent: 1,
                                                color: Color(0xFF00FFD8),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'k57v1s7x' /* Área de entrenamientos y desar... */,
                                                  ),
                                                  maxLines: 3,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 12, 0, 12),
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
                                                                    0, 0, 5, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            if (Navigator.of(
                                                                    context)
                                                                .canPop()) {
                                                              context.pop();
                                                            }
                                                            context.pushNamed(
                                                                'entrenamientos');
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
                                                                          8),
                                                            ),
                                                            child: Container(
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xFF00FFF5),
                                                                    Color(
                                                                        0xFF000923)
                                                                  ],
                                                                  stops: [0, 1],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0, 1),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFF5),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      size: 24,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              2,
                                                                              0,
                                                                              2,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '5c1q3oya' /* Entrenamientos */,
                                                                        ),
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
                                                                          .double_arrow,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      size: 24,
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5, 0, 0, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            if (Navigator.of(
                                                                    context)
                                                                .canPop()) {
                                                              context.pop();
                                                            }
                                                            context.pushNamed(
                                                                'PlanAccion');
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
                                                                          8),
                                                            ),
                                                            child: Container(
                                                              height: 50,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xFF00FFF5),
                                                                    Color(
                                                                        0xFF000923)
                                                                  ],
                                                                  stops: [0, 1],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0, 1),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFF5),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .check_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      size: 24,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              2,
                                                                              0,
                                                                              2,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'dclodeby' /* Plan de Acción */,
                                                                        ),
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
                                                                          .double_arrow,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      size: 24,
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
                                            ],
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                        ))
                                          Container(
                                            decoration: BoxDecoration(),
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1,
                                              decoration: BoxDecoration(),
                                              child: DefaultTabController(
                                                length: 2,
                                                initialIndex: 1,
                                                child: Column(
                                                  children: [
                                                    TabBar(
                                                      isScrollable: true,
                                                      labelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      unselectedLabelColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                      indicatorColor:
                                                          Color(0xFF00FFD8),
                                                      indicatorWeight: 1,
                                                      tabs: [
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4,
                                                                          0,
                                                                          4,
                                                                          0),
                                                              child: Icon(
                                                                Icons
                                                                    .video_collection,
                                                                size: 20,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'nx9nipki' /* Entrenamientos */,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4,
                                                                          0,
                                                                          4,
                                                                          0),
                                                              child: Icon(
                                                                Icons
                                                                    .call_merge,
                                                                size: 20,
                                                              ),
                                                            ),
                                                            Tab(
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'ffyvgcia' /* Plan de Acción */,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Expanded(
                                                      child: TabBarView(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        2,
                                                                        0,
                                                                        0),
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  FlutterFlowWebView(
                                                                    url:
                                                                        'https://elearning.builderall.com/course/41103/HJim2qcw/',
                                                                    bypass:
                                                                        false,
                                                                    width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width,
                                                                    height: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        1,
                                                                    verticalScroll:
                                                                        false,
                                                                    horizontalScroll:
                                                                        false,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          FlutterFlowWebView(
                                                            url:
                                                                'https://elearning.builderall.com/course/40854/R7suyHkE/',
                                                            bypass: false,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height *
                                                                1,
                                                            verticalScroll:
                                                                false,
                                                            horizontalScroll:
                                                                false,
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
