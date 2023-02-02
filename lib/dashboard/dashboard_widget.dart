import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/menu_izquierdo_widget.dart';
import '../components/menu_seting_widget.dart';
import '../components/menu_superior_widget.dart';
import '../components/noticias_derecha_widget.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/instant_timer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  InstantTimer? instantTimer;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  PageController? pageViewController;
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
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      instantTimer = InstantTimer.periodic(
        duration: Duration(milliseconds: 15000),
        callback: (timer) async {
          await Future.delayed(const Duration(milliseconds: 5000));
          await pageViewController?.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
          await Future.delayed(const Duration(milliseconds: 5000));
          await pageViewController?.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
          await Future.delayed(const Duration(milliseconds: 5000));
          await pageViewController?.animateToPage(
            0,
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
          );
        },
        startImmediately: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    instantTimer?.cancel();
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
                                          12, 0, 12, 0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 30, 0, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  GradientText(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'neolrumv' /* Dashboard */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1,
                                                    colors: [
                                                      Color(0xFFB956FF),
                                                      Color(0xFF00FFD7)
                                                    ],
                                                    gradientDirection:
                                                        GradientDirection.ltr,
                                                    gradientType:
                                                        GradientType.linear,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 12, 0, 4),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      height: 200,
                                                      child: Stack(
                                                        children: [
                                                          PageView(
                                                            controller:
                                                                pageViewController ??=
                                                                    PageController(
                                                                        initialPage:
                                                                            0),
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                height: 200,
                                                                child: Stack(
                                                                  children: [
                                                                    Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          8,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        height:
                                                                            200,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          image:
                                                                              DecorationImage(
                                                                            fit:
                                                                                BoxFit.cover,
                                                                            image:
                                                                                Image.asset(
                                                                              'assets/images/ade_(1).jpg',
                                                                            ).image,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          450,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            12,
                                                                            0,
                                                                            12),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                              child: GradientText(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'cp6z83xj' /* Digital Networkers Team */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).title2,
                                                                                colors: [
                                                                                  Color(0xFFB956FF),
                                                                                  Color(0xFF00FFD7)
                                                                                ],
                                                                                gradientDirection: GradientDirection.ltr,
                                                                                gradientType: GradientType.linear,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'uiwwqk55' /* Si vas a emprender, asegúrate ... */,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
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
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1, 1),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          10),
                                                              child: smooth_page_indicator
                                                                  .SmoothPageIndicator(
                                                                controller: pageViewController ??=
                                                                    PageController(
                                                                        initialPage:
                                                                            0),
                                                                count: 1,
                                                                axisDirection: Axis
                                                                    .horizontal,
                                                                onDotClicked:
                                                                    (i) {
                                                                  pageViewController!
                                                                      .animateToPage(
                                                                    i,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            500),
                                                                    curve: Curves
                                                                        .ease,
                                                                  );
                                                                },
                                                                effect: smooth_page_indicator
                                                                    .SlideEffect(
                                                                  spacing: 4,
                                                                  radius: 8,
                                                                  dotWidth: 8,
                                                                  dotHeight: 8,
                                                                  dotColor: Color(
                                                                      0xFF9E9E9E),
                                                                  activeDotColor:
                                                                      Color(
                                                                          0xFF00FFF5),
                                                                  paintStyle:
                                                                      PaintingStyle
                                                                          .fill,
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 5),
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
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              GradientText(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  '7yck98zo' /* HERRAMIENTAS Y RECURSOS */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title2,
                                                                colors: [
                                                                  Color(
                                                                      0xFFB956FF),
                                                                  Color(
                                                                      0xFF00FFD7)
                                                                ],
                                                                gradientDirection:
                                                                    GradientDirection
                                                                        .ltr,
                                                                gradientType:
                                                                    GradientType
                                                                        .linear,
                                                              ),
                                                              Divider(
                                                                thickness: 1,
                                                                indent: 1,
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                              ),
                                                            ],
                                                          ),
                                                          collapsed: Container(
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: 30,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'cp0ytdk3' /* Conoce las herramientas en nue... */,
                                                                ),
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
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
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                MouseRegion(
                                                                  opaque: false,
                                                                  cursor: MouseCursor
                                                                          .defer ??
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'entrenamientos');
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFEBECFA),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'eh71xvbj' /* Entrenamientos */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: Color(0xFF000030),
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 120,
                                                                              child: Divider(
                                                                                thickness: 1,
                                                                                indent: 1,
                                                                                color: mouseRegionHovered1! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Container(
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 4,
                                                                                        color: Color(0xFFCFD4FC),
                                                                                        offset: Offset(0, 4),
                                                                                      )
                                                                                    ],
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF0C24FE),
                                                                                        Color(0xFFB956FF)
                                                                                      ],
                                                                                      stops: [0, 1],
                                                                                      begin: AlignmentDirectional(1, -0.98),
                                                                                      end: AlignmentDirectional(-1, 0.98),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10),
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
                                                                          ],
                                                                        ),
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
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'PlanAccion');
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFEBECFA),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'dcqtjh32' /* Plan de Acción */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: Color(0xFF000030),
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 120,
                                                                              child: Divider(
                                                                                thickness: 1,
                                                                                indent: 1,
                                                                                color: mouseRegionHovered2! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Container(
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 4,
                                                                                        color: Color(0xFFCFD4FC),
                                                                                        offset: Offset(0, 4),
                                                                                      )
                                                                                    ],
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF0C24FE),
                                                                                        Color(0xFFB956FF)
                                                                                      ],
                                                                                      stops: [0, 1],
                                                                                      begin: AlignmentDirectional(1, -0.98),
                                                                                      end: AlignmentDirectional(-1, 0.98),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10),
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
                                                                          ],
                                                                        ),
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
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        context
                                                                            .pushNamed(
                                                                          'ConstructorFunnels',
                                                                          extra: <
                                                                              String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.bottomToTop,
                                                                              duration: Duration(milliseconds: 200),
                                                                            ),
                                                                          },
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFEBECFA),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'ybovc7ez' /* Constructor */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: Color(0xFF000030),
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 120,
                                                                              child: Divider(
                                                                                thickness: 1,
                                                                                indent: 1,
                                                                                color: mouseRegionHovered3! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Container(
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 4,
                                                                                        color: Color(0xFFCFD4FC),
                                                                                        offset: Offset(0, 4),
                                                                                      )
                                                                                    ],
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF0C24FE),
                                                                                        Color(0xFFB956FF)
                                                                                      ],
                                                                                      stops: [0, 1],
                                                                                      begin: AlignmentDirectional(1, -0.98),
                                                                                      end: AlignmentDirectional(-1, 0.98),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                    child: ClipRRect(
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
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFEBECFA),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                10,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              FFLocalizations.of(context).getText(
                                                                                'iw1q1zm6' /* Agenda */,
                                                                              ),
                                                                              textAlign: TextAlign.center,
                                                                              maxLines: 2,
                                                                              style: FlutterFlowTheme.of(context).title3.override(
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
                                                                              thickness: 1,
                                                                              indent: 1,
                                                                              color: mouseRegionHovered4! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                18,
                                                                                12,
                                                                                18,
                                                                                18),
                                                                            child:
                                                                                Material(
                                                                              color: Colors.transparent,
                                                                              elevation: 5,
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(20),
                                                                              ),
                                                                              child: Container(
                                                                                width: 80,
                                                                                height: 80,
                                                                                decoration: BoxDecoration(
                                                                                  boxShadow: [
                                                                                    BoxShadow(
                                                                                      blurRadius: 4,
                                                                                      color: Color(0xFFCFD4FC),
                                                                                      offset: Offset(0, 4),
                                                                                    )
                                                                                  ],
                                                                                  gradient: LinearGradient(
                                                                                    colors: [
                                                                                      Color(0xFF0C24FE),
                                                                                      Color(0xFFB956FF)
                                                                                    ],
                                                                                    stops: [0, 1],
                                                                                    begin: AlignmentDirectional(1, -0.98),
                                                                                    end: AlignmentDirectional(-1, 0.98),
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(10),
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
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'Eventss');
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFEBECFA),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  '8hwxrinx' /* Eventos */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: Color(0xFF000030),
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 120,
                                                                              child: Divider(
                                                                                thickness: 1,
                                                                                indent: 1,
                                                                                color: mouseRegionHovered5! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Container(
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 4,
                                                                                        color: Color(0xFFCFD4FC),
                                                                                        offset: Offset(0, 4),
                                                                                      )
                                                                                    ],
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF0C24FE),
                                                                                        Color(0xFFB956FF)
                                                                                      ],
                                                                                      stops: [0, 1],
                                                                                      begin: AlignmentDirectional(1, -0.98),
                                                                                      end: AlignmentDirectional(-1, 0.98),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10),
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
                                                                          ],
                                                                        ),
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
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'DisenaThor');
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFEBECFA),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'a1ttirc1' /* DiseñaThor */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: Color(0xFF000030),
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 120,
                                                                              child: Divider(
                                                                                thickness: 1,
                                                                                indent: 1,
                                                                                color: mouseRegionHovered6! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Container(
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 4,
                                                                                        color: Color(0xFFCFD4FC),
                                                                                        offset: Offset(0, 4),
                                                                                      )
                                                                                    ],
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF0C24FE),
                                                                                        Color(0xFFB956FF)
                                                                                      ],
                                                                                      stops: [0, 1],
                                                                                      begin: AlignmentDirectional(1, -0.98),
                                                                                      end: AlignmentDirectional(-1, 0.98),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10),
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
                                                                          ],
                                                                        ),
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
                                                                      MouseCursor
                                                                          .defer,
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            0,
                                                                            10,
                                                                            20),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'Recursos');
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xFFEBECFA),
                                                                          borderRadius:
                                                                              BorderRadius.circular(5),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'gv6jubag' /* Recursos */,
                                                                                ),
                                                                                textAlign: TextAlign.center,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: Color(0xFF000030),
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 120,
                                                                              child: Divider(
                                                                                thickness: 1,
                                                                                indent: 1,
                                                                                color: mouseRegionHovered7! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 5,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(20),
                                                                                ),
                                                                                child: Container(
                                                                                  width: 80,
                                                                                  height: 80,
                                                                                  decoration: BoxDecoration(
                                                                                    boxShadow: [
                                                                                      BoxShadow(
                                                                                        blurRadius: 4,
                                                                                        color: Color(0xFFCFD4FC),
                                                                                        offset: Offset(0, 4),
                                                                                      )
                                                                                    ],
                                                                                    gradient: LinearGradient(
                                                                                      colors: [
                                                                                        Color(0xFF0C24FE),
                                                                                        Color(0xFFB956FF)
                                                                                      ],
                                                                                      stops: [0, 1],
                                                                                      begin: AlignmentDirectional(1, -0.98),
                                                                                      end: AlignmentDirectional(-1, 0.98),
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(10),
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
                                                                          ],
                                                                        ),
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
                                                          theme:
                                                              ExpandableThemeData(
                                                            tapHeaderToExpand:
                                                                true,
                                                            tapBodyToExpand:
                                                                false,
                                                            tapBodyToCollapse:
                                                                false,
                                                            headerAlignment:
                                                                ExpandablePanelHeaderAlignment
                                                                    .center,
                                                            hasIcon: true,
                                                            iconSize: 30,
                                                            iconColor: Color(
                                                                0xFF00FFD8),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 4, 0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 8,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x2700FFD7),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4,
                                                                        4,
                                                                        4,
                                                                        4),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              color: Color(
                                                                  0x00000000),
                                                              child:
                                                                  ExpandableNotifier(
                                                                initialExpanded:
                                                                    true,
                                                                child:
                                                                    ExpandablePanel(
                                                                  header:
                                                                      Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            GradientText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'fdy5k4u2' /* COLECCIÓN DE NEGOCIOS */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).title2,
                                                                          colors: [
                                                                            Color(0xFFB956FF),
                                                                            Color(0xFF00FFD7)
                                                                          ],
                                                                          gradientDirection:
                                                                              GradientDirection.ltr,
                                                                          gradientType:
                                                                              GradientType.linear,
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        thickness:
                                                                            1,
                                                                        indent:
                                                                            1,
                                                                        color: Color(
                                                                            0xFF00FFD8),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  collapsed:
                                                                      Container(
                                                                    width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '1cmd6b1m' /* Visualiza y aterriza los negoc... */,
                                                                        ),
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  expanded:
                                                                      StreamBuilder<
                                                                          List<
                                                                              EmpresasRecord>>(
                                                                    stream:
                                                                        queryEmpresasRecord(
                                                                      queryBuilder: (empresasRecord) => empresasRecord.where(
                                                                          'Estatus',
                                                                          isEqualTo:
                                                                              true),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50,
                                                                            height:
                                                                                50,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              color: Color(0xFF1900FF),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<EmpresasRecord>
                                                                          rowEmpresasRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      return Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: List.generate(
                                                                            rowEmpresasRecordList.length,
                                                                            (rowIndex) {
                                                                          final rowEmpresasRecord =
                                                                              rowEmpresasRecordList[rowIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10,
                                                                                0,
                                                                                10,
                                                                                20),
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0xFFEBECFA),
                                                                                borderRadius: BorderRadius.circular(5),
                                                                              ),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          rowEmpresasRecord.nombre!,
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).title3.override(
                                                                                                fontFamily: 'Roboto',
                                                                                                color: Color(0xFF000030),
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                          child: Icon(
                                                                                            Icons.keyboard_arrow_right,
                                                                                            color: Color(0xFF021051),
                                                                                            size: 15,
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(
                                                                                    width: 130,
                                                                                    child: Divider(
                                                                                      thickness: 1,
                                                                                      indent: 1,
                                                                                      color: Color(0x850C53FE),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 5,
                                                                                      shape: RoundedRectangleBorder(
                                                                                        borderRadius: BorderRadius.circular(20),
                                                                                      ),
                                                                                      child: Container(
                                                                                        width: 80,
                                                                                        height: 80,
                                                                                        decoration: BoxDecoration(
                                                                                          boxShadow: [
                                                                                            BoxShadow(
                                                                                              blurRadius: 4,
                                                                                              color: Color(0xFFCFD4FC),
                                                                                              offset: Offset(0, 4),
                                                                                            )
                                                                                          ],
                                                                                          gradient: LinearGradient(
                                                                                            colors: [
                                                                                              Color(0xFF0C24FE),
                                                                                              Color(0xFFB956FF)
                                                                                            ],
                                                                                            stops: [0, 1],
                                                                                            begin: AlignmentDirectional(1, -0.98),
                                                                                            end: AlignmentDirectional(-1, 0.98),
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(20),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(10),
                                                                                            child: Image.network(
                                                                                              rowEmpresasRecord.icono!,
                                                                                              width: 50,
                                                                                              height: 50,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 2,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.only(
                                                                                        bottomLeft: Radius.circular(5),
                                                                                        bottomRight: Radius.circular(5),
                                                                                        topLeft: Radius.circular(0),
                                                                                        topRight: Radius.circular(0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Container(
                                                                                      width: 130,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0xC50C53FE),
                                                                                        borderRadius: BorderRadius.only(
                                                                                          bottomLeft: Radius.circular(5),
                                                                                          bottomRight: Radius.circular(5),
                                                                                          topLeft: Radius.circular(0),
                                                                                          topRight: Radius.circular(0),
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                          children: [
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'fexofg9l' /* FUNNEL */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    fontSize: 10,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'w8aqrdqa' /* ENTRAR */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    fontSize: 10,
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
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                  theme:
                                                                      ExpandableThemeData(
                                                                    tapHeaderToExpand:
                                                                        true,
                                                                    tapBodyToExpand:
                                                                        false,
                                                                    tapBodyToCollapse:
                                                                        false,
                                                                    headerAlignment:
                                                                        ExpandablePanelHeaderAlignment
                                                                            .center,
                                                                    hasIcon:
                                                                        true,
                                                                    iconSize:
                                                                        30,
                                                                    iconColor:
                                                                        Color(
                                                                            0xFF00FFD8),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4, 0, 0, 0),
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 8,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x2700FFD7),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4,
                                                                        4,
                                                                        4,
                                                                        4),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              color: Color(
                                                                  0x00000000),
                                                              child:
                                                                  ExpandableNotifier(
                                                                initialExpanded:
                                                                    true,
                                                                child:
                                                                    ExpandablePanel(
                                                                  header:
                                                                      Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            GradientText(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '1ucfiaw8' /* SERVICIOS (Opcional) */,
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).title2,
                                                                          colors: [
                                                                            Color(0xFFB956FF),
                                                                            Color(0xFF00FFD7)
                                                                          ],
                                                                          gradientDirection:
                                                                              GradientDirection.ltr,
                                                                          gradientType:
                                                                              GradientType.linear,
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        thickness:
                                                                            1,
                                                                        indent:
                                                                            1,
                                                                        color: Color(
                                                                            0xFF00FFD8),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  collapsed:
                                                                      Container(
                                                                    width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width,
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              10,
                                                                              0,
                                                                              0,
                                                                              10),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'u1z4f6fp' /* Encuentra servicios opcionales... */,
                                                                        ),
                                                                        maxLines:
                                                                            4,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  expanded: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              10,
                                                                              20),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFEBECFA),
                                                                              borderRadius: BorderRadius.circular(5),
                                                                            ),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'fulahdob' /* Wallet DNT */,
                                                                                    ),
                                                                                    textAlign: TextAlign.center,
                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          color: Color(0xFF000030),
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                SizedBox(
                                                                                  width: 130,
                                                                                  child: Divider(
                                                                                    thickness: 1,
                                                                                    indent: 1,
                                                                                    color: mouseRegionHovered8! ? Color(0xFF0C24FE) : Color(0x850C53FE),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(18, 12, 18, 18),
                                                                                  child: Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 5,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(20),
                                                                                    ),
                                                                                    child: Container(
                                                                                      width: 80,
                                                                                      height: 80,
                                                                                      decoration: BoxDecoration(
                                                                                        boxShadow: [
                                                                                          BoxShadow(
                                                                                            blurRadius: 4,
                                                                                            color: Color(0xFFCFD4FC),
                                                                                            offset: Offset(0, 4),
                                                                                          )
                                                                                        ],
                                                                                        gradient: LinearGradient(
                                                                                          colors: [
                                                                                            Color(0xFF0C24FE),
                                                                                            Color(0xFFB956FF)
                                                                                          ],
                                                                                          stops: [0, 1],
                                                                                          begin: AlignmentDirectional(1, -0.98),
                                                                                          end: AlignmentDirectional(-1, 0.98),
                                                                                        ),
                                                                                        borderRadius: BorderRadius.circular(20),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                                                        child: ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(10),
                                                                                          child: Image.asset(
                                                                                            'assets/images/wallet_(1)_(1).png',
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
                                                                                  width: 130,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0xC50C53FE),
                                                                                    borderRadius: BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(5),
                                                                                      bottomRight: Radius.circular(5),
                                                                                      topLeft: Radius.circular(0),
                                                                                      topRight: Radius.circular(0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                      children: [
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'uqv7t333' /* CREAR */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).title3.override(
                                                                                                fontFamily: 'Roboto',
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                fontSize: 10,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'm65tfw1w' /* ENTRAR */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).title3.override(
                                                                                                fontFamily: 'Roboto',
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                fontSize: 10,
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
                                                                        onEnter:
                                                                            ((event) async {
                                                                          setState(() =>
                                                                              mouseRegionHovered8 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          setState(() =>
                                                                              mouseRegionHovered8 = false);
                                                                        }),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  theme:
                                                                      ExpandableThemeData(
                                                                    tapHeaderToExpand:
                                                                        true,
                                                                    tapBodyToExpand:
                                                                        false,
                                                                    tapBodyToCollapse:
                                                                        false,
                                                                    headerAlignment:
                                                                        ExpandablePanelHeaderAlignment
                                                                            .center,
                                                                    hasIcon:
                                                                        true,
                                                                    iconSize:
                                                                        30,
                                                                    iconColor:
                                                                        Color(
                                                                            0xFF00FFD8),
                                                                  ),
                                                                ),
                                                              ),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Expanded(
                                                    child: Column(
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
                                                            'w2oifwhq' /* CONOCE A NUESTRO EQUIPO */,
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
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
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
                                                        Divider(
                                                          thickness: 1,
                                                          indent: 1,
                                                          color:
                                                              Color(0xFF00FFD8),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 0, 0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'pxj1pixg' /* Más de 50 años de experiencia ... */,
                                                            ),
                                                            maxLines: 3,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 12),
                                              child: StreamBuilder<
                                                  List<EquipoRecord>>(
                                                stream: queryEquipoRecord(
                                                  queryBuilder:
                                                      (equipoRecord) =>
                                                          equipoRecord.where(
                                                              'Estatus',
                                                              isEqualTo: true),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color:
                                                              Color(0xFF1900FF),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<EquipoRecord>
                                                      rowEquipoRecordList =
                                                      snapshot.data!;
                                                  return SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: List.generate(
                                                          rowEquipoRecordList
                                                              .length,
                                                          (rowIndex) {
                                                        final rowEquipoRecord =
                                                            rowEquipoRecordList[
                                                                rowIndex];
                                                        return Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10,
                                                                      0,
                                                                      10,
                                                                      12),
                                                          child: Container(
                                                            width: 300,
                                                            child: Stack(
                                                              children: [
                                                                Container(
                                                                  width: 300,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        400,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            70,
                                                                            0,
                                                                            0),
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
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              rowEquipoRecord.color2,
                                                                          borderRadius:
                                                                              BorderRadius.circular(20),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            CodPaisesRecord>(
                                                                          stream:
                                                                              CodPaisesRecord.getDocument(rowEquipoRecord.iDPais!),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            final columnCodPaisesRecord =
                                                                                snapshot.data!;
                                                                            return Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 60, 10, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Text(
                                                                                          rowEquipoRecord.descripsion!,
                                                                                          textAlign: TextAlign.center,
                                                                                          maxLines: 5,
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFFF4F4F4),
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 6),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Text(
                                                                                          rowEquipoRecord.nombre!,
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).title2.override(
                                                                                                fontFamily: 'Roboto',
                                                                                                color: Colors.white,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    children: [
                                                                                      Expanded(
                                                                                        child: Text(
                                                                                          columnCodPaisesRecord.pais!,
                                                                                          textAlign: TextAlign.center,
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                                                fontStyle: FontStyle.italic,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: Card(
                                                                      clipBehavior:
                                                                          Clip.antiAliasWithSaveLayer,
                                                                      color: rowEquipoRecord
                                                                          .color,
                                                                      elevation:
                                                                          15,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(100),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            2,
                                                                            2,
                                                                            2,
                                                                            2),
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              96,
                                                                          height:
                                                                              96,
                                                                          clipBehavior:
                                                                              Clip.antiAlias,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              rowEquipoRecord.foto,
                                                                              'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                            ),
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 20, 0, 5),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  GradientText(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uebn3nmq' /* ÚLTIMAS NOVEDADES */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                10, 0, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '811h1f0n' /* Testimonios y novedades en un ... */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 30),
                                              child: StreamBuilder<
                                                  List<UserPostRecord>>(
                                                stream: queryUserPostRecord(
                                                  queryBuilder:
                                                      (userPostRecord) =>
                                                          userPostRecord
                                                              .orderBy(
                                                                  'time_posted',
                                                                  descending:
                                                                      true),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color:
                                                              Color(0xFF1900FF),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UserPostRecord>
                                                      rowUserPostRecordList =
                                                      snapshot.data!;
                                                  return SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          rowUserPostRecordList
                                                              .length,
                                                          (rowIndex) {
                                                        final rowUserPostRecord =
                                                            rowUserPostRecordList[
                                                                rowIndex];
                                                        return Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, -0.95),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4,
                                                                        12,
                                                                        2,
                                                                        0),
                                                            child: StreamBuilder<
                                                                UsersRecord>(
                                                              stream: UsersRecord
                                                                  .getDocument(
                                                                      rowUserPostRecord
                                                                          .postUser!),
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
                                                                final containerUsersRecord =
                                                                    snapshot
                                                                        .data!;
                                                                return Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation: 6,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: 280,
                                                                    height: 280,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x2700FFD7),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              8),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                                  child: Container(
                                                                                    width: 40,
                                                                                    height: 40,
                                                                                    clipBehavior: Clip.antiAlias,
                                                                                    decoration: BoxDecoration(
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                    child: Image.network(
                                                                                      valueOrDefault<String>(
                                                                                        containerUsersRecord.photoUrl,
                                                                                        'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/user02.png',
                                                                                      ),
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        containerUsersRecord.displayName!,
                                                                                        style: FlutterFlowTheme.of(context).title3.override(
                                                                                              fontFamily: 'Roboto',
                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              fontSize: 12,
                                                                                            ),
                                                                                      ),
                                                                                      Text(
                                                                                        'Publicado ${dateTimeFormat(
                                                                                          'relative',
                                                                                          rowUserPostRecord.timePosted,
                                                                                          locale: FFLocalizations.of(context).languageCode,
                                                                                        )}',
                                                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                              fontFamily: 'Roboto Condensed',
                                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                                              fontSize: 8,
                                                                                            ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Expanded(
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      Icon(
                                                                                        Icons.keyboard_arrow_right,
                                                                                        color: Color(0xFF00FFD7),
                                                                                        size: 24,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              12),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Text(
                                                                                  rowUserPostRecord.postDescription!,
                                                                                  maxLines: 4,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        fontSize: 12,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        FlutterFlowMediaDisplay(
                                                                          path:
                                                                              rowUserPostRecord.postPhoto!,
                                                                          imageBuilder: (path) =>
                                                                              Image.network(
                                                                            path,
                                                                            width:
                                                                                280,
                                                                            height:
                                                                                150,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                          videoPlayerBuilder: (path) =>
                                                                              FlutterFlowVideoPlayer(
                                                                            path:
                                                                                path,
                                                                            width:
                                                                                280,
                                                                            height:
                                                                                150,
                                                                            autoPlay:
                                                                                false,
                                                                            looping:
                                                                                true,
                                                                            showControls:
                                                                                true,
                                                                            allowFullScreen:
                                                                                true,
                                                                            allowPlaybackSpeedMenu:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                        Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.only(
                                                                              bottomLeft: Radius.circular(10),
                                                                              bottomRight: Radius.circular(10),
                                                                              topLeft: Radius.circular(0),
                                                                              topRight: Radius.circular(0),
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).alternateTwo20,
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(10),
                                                                                bottomRight: Radius.circular(10),
                                                                                topLeft: Radius.circular(0),
                                                                                topRight: Radius.circular(0),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(2, 3, 2, 3),
                                                                                      child: Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: Color(0xFFFF0000),
                                                                                        elevation: 4,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(100),
                                                                                        ),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            if (!rowUserPostRecord.likes!.toList().contains(currentUserReference))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    final userPostUpdateData = {
                                                                                                      'likes': FieldValue.arrayUnion([currentUserReference]),
                                                                                                    };
                                                                                                    await rowUserPostRecord.reference.update(userPostUpdateData);
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.favorite_border,
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    size: 15,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            if (rowUserPostRecord.likes!.toList().contains(currentUserReference))
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    final userPostUpdateData = {
                                                                                                      'likes': FieldValue.arrayRemove([currentUserReference]),
                                                                                                    };
                                                                                                    await rowUserPostRecord.reference.update(userPostUpdateData);
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.favorite_rounded,
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    size: 15,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '1uzt3oz2' /* 15 */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 10,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(2, 3, 2, 3),
                                                                                      child: Card(
                                                                                        clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                        color: Color(0xFFFF0000),
                                                                                        elevation: 4,
                                                                                        shape: RoundedRectangleBorder(
                                                                                          borderRadius: BorderRadius.circular(100),
                                                                                        ),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                                                                                              child: Icon(
                                                                                                Icons.message_sharp,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                size: 15,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      rowUserPostRecord.numComments!.toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 10,
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
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
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
