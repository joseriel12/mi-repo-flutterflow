import '../backend/backend.dart';
import '../components/activador_solicitudes_widget.dart';
import '../components/adds_dashboard_widget.dart';
import '../components/adds_empresa_widget.dart';
import '../components/adds_team_widget.dart';
import '../components/data_usuarrios_widget.dart';
import '../components/editar_dashboard_widget.dart';
import '../components/editar_empresa_widget.dart';
import '../components/editar_team_widget.dart';
import '../components/encabezado_admin_widget.dart';
import '../components/menu_admin_widget.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class PanelAdminWidget extends StatefulWidget {
  const PanelAdminWidget({Key? key}) : super(key: key);

  @override
  _PanelAdminWidgetState createState() => _PanelAdminWidgetState();
}

class _PanelAdminWidgetState extends State<PanelAdminWidget> {
  bool mouseRegionHovered1 = false;
  bool mouseRegionHovered2 = false;
  bool mouseRegionHovered3 = false;
  bool mouseRegionHovered4 = false;
  bool mouseRegionHovered5 = false;
  bool mouseRegionHovered6 = false;
  bool mouseRegionHovered7 = false;
  bool mouseRegionHovered10 = false;
  bool mouseRegionHovered8 = false;
  bool mouseRegionHovered9 = false;
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
      backgroundColor: Color(0xFF000425),
      drawer: Container(
        width: 200,
        child: Drawer(
          elevation: 16,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF000425),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 20, 12, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () async {
                          if (scaffoldKey.currentState!.isDrawerOpen ||
                              scaffoldKey.currentState!.isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
                        },
                        child: Icon(
                          Icons.clear,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Image.asset(
                          'assets/images/dnt_soloo.png',
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: MenuAdminWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(),
                      child: EncabezadoAdminWidget(),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                      ))
                        Material(
                          color: Colors.transparent,
                          elevation: 10,
                          child: Container(
                            width: 200,
                            decoration: BoxDecoration(),
                            child: MenuAdminWidget(),
                          ),
                        ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0x2700FFD8),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 20, 12, 0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'eyupte60' /* GESTOR DE USUARIOS TEAM DNT */,
                                                  ),
                                                  maxLines: 3,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .title1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6, 0, 6, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(6, 6, 6, 12),
                                                  child: Container(
                                                    width: 500,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x5900FFD8),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0),
                                                              topLeft: Radius
                                                                  .circular(8),
                                                              topRight: Radius
                                                                  .circular(8),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10,
                                                                        12,
                                                                        12,
                                                                        8),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Card(
                                                                      clipBehavior:
                                                                          Clip.antiAliasWithSaveLayer,
                                                                      color: Color(
                                                                          0x2800FFD8),
                                                                      elevation:
                                                                          8,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8,
                                                                            8,
                                                                            8,
                                                                            8),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .person,
                                                                          color:
                                                                              Color(0xFF00FFD8),
                                                                          size:
                                                                              30,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'jtxebmo2' /* USUARIOS */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .title2
                                                                            .override(
                                                                              fontFamily: 'Roboto',
                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Expanded(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      MouseRegion(
                                                                        opaque:
                                                                            false,
                                                                        cursor: MouseCursor.defer ??
                                                                            MouseCursor.defer,
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .cloud_download,
                                                                          color: mouseRegionHovered1!
                                                                              ? FlutterFlowTheme.of(context).alternateTwo
                                                                              : FlutterFlowTheme.of(context).primaryBtnText,
                                                                          size:
                                                                              24,
                                                                        ),
                                                                        onEnter:
                                                                            ((event) async {
                                                                          setState(() =>
                                                                              mouseRegionHovered1 = true);
                                                                        }),
                                                                        onExit:
                                                                            ((event) async {
                                                                          setState(() =>
                                                                              mouseRegionHovered1 = false);
                                                                        }),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 0,
                                                          thickness: 1,
                                                          color:
                                                              Color(0xFF00FFD8),
                                                        ),
                                                        Container(
                                                          constraints:
                                                              BoxConstraints(
                                                            maxHeight: 350,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors
                                                                .transparent,
                                                          ),
                                                          child: Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 350,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1, 0),
                                                              child:
                                                                  DefaultTabController(
                                                                length: 5,
                                                                initialIndex: 0,
                                                                child: Column(
                                                                  children: [
                                                                    TabBar(
                                                                      isScrollable:
                                                                          true,
                                                                      labelColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryBtnText,
                                                                      unselectedLabelColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .grayIcon,
                                                                      labelStyle:
                                                                          FlutterFlowTheme.of(context)
                                                                              .title3,
                                                                      indicatorColor:
                                                                          Color(
                                                                              0xFF00FFD8),
                                                                      tabs: [
                                                                        Tab(
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            '3hsiumlj' /* Todos */,
                                                                          ),
                                                                        ),
                                                                        Tab(
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            '66iw4s7a' /* Team DNT */,
                                                                          ),
                                                                        ),
                                                                        Tab(
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            '7kqf5l7t' /* Comerciantes */,
                                                                          ),
                                                                        ),
                                                                        Tab(
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            'x8j8iq1d' /* Representantes */,
                                                                          ),
                                                                        ),
                                                                        Tab(
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            'lqkvmp8u' /* Administradores */,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          TabBarView(
                                                                        children: [
                                                                          KeepAliveWidgetWrapper(
                                                                            builder: (context) =>
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x3800FFD8),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '5pzlm6vw' /* Nombre */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
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
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'b70vz6uh' /* Email */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'i42y4hg0' /* WhatsApp */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'uxy9n68e' /* Acceso */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                StreamBuilder<List<UsersRecord>>(
                                                                                  stream: queryUsersRecord(),
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
                                                                                    List<UsersRecord> listViewUsersRecordList = snapshot.data!;
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: listViewUsersRecordList.length,
                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                        final listViewUsersRecord = listViewUsersRecordList[listViewIndex];
                                                                                        return Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                                                                                          child: Container(
                                                                                            height: 60,
                                                                                            decoration: BoxDecoration(
                                                                                              color: Color(0x3800FFD8),
                                                                                              boxShadow: [
                                                                                                BoxShadow(
                                                                                                  color: Color(0x33000000),
                                                                                                  offset: Offset(0, 2),
                                                                                                )
                                                                                              ],
                                                                                            ),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                      child: Stack(
                                                                                                        alignment: AlignmentDirectional(1, 1),
                                                                                                        children: [
                                                                                                          Material(
                                                                                                            color: Colors.transparent,
                                                                                                            elevation: 8,
                                                                                                            shape: const CircleBorder(),
                                                                                                            child: Container(
                                                                                                              width: 40,
                                                                                                              height: 40,
                                                                                                              decoration: BoxDecoration(
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                              child: Container(
                                                                                                                width: 40,
                                                                                                                height: 40,
                                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Image.network(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    listViewUsersRecord.photoUrl,
                                                                                                                    'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                  ),
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Icon(
                                                                                                            Icons.verified_user,
                                                                                                            color: listViewUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                            size: 15,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                    Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.displayName!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                        if (responsiveVisibility(
                                                                                                          context: context,
                                                                                                          tablet: false,
                                                                                                          tabletLandscape: false,
                                                                                                          desktop: false,
                                                                                                        ))
                                                                                                          Text(
                                                                                                            listViewUsersRecord.email!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                        Text(
                                                                                                          '@${listViewUsersRecord.nameUser}',
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                fontSize: 10,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                if (responsiveVisibility(
                                                                                                  context: context,
                                                                                                  phone: false,
                                                                                                ))
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        listViewUsersRecord.email!,
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                if (responsiveVisibility(
                                                                                                  context: context,
                                                                                                  phone: false,
                                                                                                ))
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Text(
                                                                                                        listViewUsersRecord.numeroWhatsApp!,
                                                                                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                Column(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    if (listViewUsersRecord.isTeamDNT ?? true)
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'wvps3gh7' /* Team DNT */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                            child: Icon(
                                                                                                              Icons.check,
                                                                                                              color: listViewUsersRecord.isTeamDNT! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    if (listViewUsersRecord.isComerciante ?? true)
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'oimaczgn' /* Comerciante */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                            child: Icon(
                                                                                                              Icons.check,
                                                                                                              color: listViewUsersRecord.isComerciante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    if (listViewUsersRecord.isRepresentante ?? true)
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'b22i67ne' /* Representante */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                            child: Icon(
                                                                                                              Icons.check,
                                                                                                              color: listViewUsersRecord.isRepresentante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    if (listViewUsersRecord.isAdmin ?? true)
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'bt7pxaip' /* Administrador */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                            child: Icon(
                                                                                                              Icons.check,
                                                                                                              color: listViewUsersRecord.isAdmin! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          KeepAliveWidgetWrapper(
                                                                            builder: (context) =>
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x3800FFD8),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'iggc3z7l' /* Nombre */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
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
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'uwp5rkxd' /* Email */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'lvm7vwnm' /* WhatsApp */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'x5xsbjzx' /* Acceso */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                StreamBuilder<List<UsersRecord>>(
                                                                                  stream: queryUsersRecord(
                                                                                    queryBuilder: (usersRecord) => usersRecord.where('isTeamDNT', isEqualTo: true).orderBy('created_time', descending: true),
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
                                                                                    List<UsersRecord> listViewUsersRecordList = snapshot.data!;
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: listViewUsersRecordList.length,
                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                        final listViewUsersRecord = listViewUsersRecordList[listViewIndex];
                                                                                        return Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                isDismissible: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: DataUsuarriosWidget(
                                                                                                      idUser: listViewUsersRecord.reference,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 60,
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3800FFD8),
                                                                                                boxShadow: [
                                                                                                  BoxShadow(
                                                                                                    color: Color(0x33000000),
                                                                                                    offset: Offset(0, 2),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                        child: Stack(
                                                                                                          alignment: AlignmentDirectional(1, 1),
                                                                                                          children: [
                                                                                                            Material(
                                                                                                              color: Colors.transparent,
                                                                                                              elevation: 8,
                                                                                                              shape: const CircleBorder(),
                                                                                                              child: Container(
                                                                                                                width: 40,
                                                                                                                height: 40,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: 40,
                                                                                                                  height: 40,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      listViewUsersRecord.photoUrl,
                                                                                                                      'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Icon(
                                                                                                              Icons.verified_user,
                                                                                                              color: listViewUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            listViewUsersRecord.displayName!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                ),
                                                                                                          ),
                                                                                                          if (responsiveVisibility(
                                                                                                            context: context,
                                                                                                            tablet: false,
                                                                                                            tabletLandscape: false,
                                                                                                            desktop: false,
                                                                                                          ))
                                                                                                            Text(
                                                                                                              listViewUsersRecord.email!,
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          Text(
                                                                                                            '@${listViewUsersRecord.nameUser}',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.email!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.numeroWhatsApp!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (listViewUsersRecord.isTeamDNT ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '746g9tis' /* Team DNT */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isTeamDNT! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isComerciante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'zs7b5ppk' /* Comerciante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isComerciante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isRepresentante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'gxgnvn4u' /* Representante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isRepresentante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isAdmin ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '6xowqmxa' /* Administrador */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isAdmin! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          KeepAliveWidgetWrapper(
                                                                            builder: (context) =>
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x3800FFD8),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'ix9wf2c8' /* Nombre */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
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
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'ki6fg71o' /* Email */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'soc81b1w' /* WhatsApp */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'yepuz2t3' /* Acceso */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                StreamBuilder<List<UsersRecord>>(
                                                                                  stream: queryUsersRecord(
                                                                                    queryBuilder: (usersRecord) => usersRecord.where('isComerciante', isEqualTo: true).orderBy('created_time', descending: true),
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
                                                                                    List<UsersRecord> listViewUsersRecordList = snapshot.data!;
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: listViewUsersRecordList.length,
                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                        final listViewUsersRecord = listViewUsersRecordList[listViewIndex];
                                                                                        return Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                isDismissible: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: DataUsuarriosWidget(
                                                                                                      idUser: listViewUsersRecord.reference,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 60,
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3800FFD8),
                                                                                                boxShadow: [
                                                                                                  BoxShadow(
                                                                                                    color: Color(0x33000000),
                                                                                                    offset: Offset(0, 2),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                        child: Stack(
                                                                                                          alignment: AlignmentDirectional(1, 1),
                                                                                                          children: [
                                                                                                            Material(
                                                                                                              color: Colors.transparent,
                                                                                                              elevation: 8,
                                                                                                              shape: const CircleBorder(),
                                                                                                              child: Container(
                                                                                                                width: 40,
                                                                                                                height: 40,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: 40,
                                                                                                                  height: 40,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      listViewUsersRecord.photoUrl,
                                                                                                                      'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Icon(
                                                                                                              Icons.verified_user,
                                                                                                              color: listViewUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            listViewUsersRecord.displayName!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                ),
                                                                                                          ),
                                                                                                          if (responsiveVisibility(
                                                                                                            context: context,
                                                                                                            tablet: false,
                                                                                                            tabletLandscape: false,
                                                                                                            desktop: false,
                                                                                                          ))
                                                                                                            Text(
                                                                                                              listViewUsersRecord.email!,
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          Text(
                                                                                                            '@${listViewUsersRecord.nameUser}',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.email!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.numeroWhatsApp!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (listViewUsersRecord.isTeamDNT ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '4frfitg8' /* Team DNT */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isTeamDNT! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isComerciante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'n68wfiud' /* Comerciante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isComerciante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isRepresentante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'sshzs2dl' /* Representante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isRepresentante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isAdmin ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'wmiedft6' /* Administrador */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isAdmin! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          KeepAliveWidgetWrapper(
                                                                            builder: (context) =>
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x3800FFD8),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'lixuv6pt' /* Nombre */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
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
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'kccqh3qv' /* Email */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'xupaxk4o' /* WhatsApp */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'a24geo5i' /* Acceso */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                StreamBuilder<List<UsersRecord>>(
                                                                                  stream: queryUsersRecord(
                                                                                    queryBuilder: (usersRecord) => usersRecord.where('isRepresentante', isEqualTo: true).orderBy('created_time', descending: true),
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
                                                                                    List<UsersRecord> listViewUsersRecordList = snapshot.data!;
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: listViewUsersRecordList.length,
                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                        final listViewUsersRecord = listViewUsersRecordList[listViewIndex];
                                                                                        return Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                isDismissible: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: DataUsuarriosWidget(
                                                                                                      idUser: listViewUsersRecord.reference,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 60,
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3800FFD8),
                                                                                                boxShadow: [
                                                                                                  BoxShadow(
                                                                                                    color: Color(0x33000000),
                                                                                                    offset: Offset(0, 2),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                        child: Stack(
                                                                                                          alignment: AlignmentDirectional(1, 1),
                                                                                                          children: [
                                                                                                            Material(
                                                                                                              color: Colors.transparent,
                                                                                                              elevation: 8,
                                                                                                              shape: const CircleBorder(),
                                                                                                              child: Container(
                                                                                                                width: 40,
                                                                                                                height: 40,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: 40,
                                                                                                                  height: 40,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      listViewUsersRecord.photoUrl,
                                                                                                                      'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Icon(
                                                                                                              Icons.verified_user,
                                                                                                              color: listViewUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            listViewUsersRecord.displayName!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                ),
                                                                                                          ),
                                                                                                          if (responsiveVisibility(
                                                                                                            context: context,
                                                                                                            tablet: false,
                                                                                                            tabletLandscape: false,
                                                                                                            desktop: false,
                                                                                                          ))
                                                                                                            Text(
                                                                                                              listViewUsersRecord.email!,
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          Text(
                                                                                                            '@${listViewUsersRecord.nameUser}',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.email!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.numeroWhatsApp!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (listViewUsersRecord.isTeamDNT ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'bhtd1cfo' /* Team DNT */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isTeamDNT! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isComerciante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '5ms0ho32' /* Comerciante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isComerciante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isRepresentante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '5xdbe91e' /* Representante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isRepresentante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isAdmin ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '6kckkk15' /* Administrador */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isAdmin! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          KeepAliveWidgetWrapper(
                                                                            builder: (context) =>
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  height: 50,
                                                                                  decoration: BoxDecoration(
                                                                                    color: Color(0x3800FFD8),
                                                                                  ),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'acer4c5u' /* Nombre */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
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
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'yfpjmayw' /* Email */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      if (responsiveVisibility(
                                                                                        context: context,
                                                                                        phone: false,
                                                                                      ))
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'unog6r79' /* WhatsApp */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '0q6j71gu' /* Acceso */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                  fontFamily: 'Roboto',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                StreamBuilder<List<UsersRecord>>(
                                                                                  stream: queryUsersRecord(
                                                                                    queryBuilder: (usersRecord) => usersRecord.where('isAdmin', isEqualTo: true).orderBy('created_time', descending: true),
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
                                                                                    List<UsersRecord> listViewUsersRecordList = snapshot.data!;
                                                                                    return ListView.builder(
                                                                                      padding: EdgeInsets.zero,
                                                                                      shrinkWrap: true,
                                                                                      scrollDirection: Axis.vertical,
                                                                                      itemCount: listViewUsersRecordList.length,
                                                                                      itemBuilder: (context, listViewIndex) {
                                                                                        final listViewUsersRecord = listViewUsersRecordList[listViewIndex];
                                                                                        return Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                isDismissible: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: DataUsuarriosWidget(
                                                                                                      idUser: listViewUsersRecord.reference,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 60,
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3800FFD8),
                                                                                                boxShadow: [
                                                                                                  BoxShadow(
                                                                                                    color: Color(0x33000000),
                                                                                                    offset: Offset(0, 2),
                                                                                                  )
                                                                                                ],
                                                                                              ),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                children: [
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                                        child: Stack(
                                                                                                          alignment: AlignmentDirectional(1, 1),
                                                                                                          children: [
                                                                                                            Material(
                                                                                                              color: Colors.transparent,
                                                                                                              elevation: 8,
                                                                                                              shape: const CircleBorder(),
                                                                                                              child: Container(
                                                                                                                width: 40,
                                                                                                                height: 40,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                                child: Container(
                                                                                                                  width: 40,
                                                                                                                  height: 40,
                                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    shape: BoxShape.circle,
                                                                                                                  ),
                                                                                                                  child: Image.network(
                                                                                                                    valueOrDefault<String>(
                                                                                                                      listViewUsersRecord.photoUrl,
                                                                                                                      'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                    ),
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                            Icon(
                                                                                                              Icons.verified_user,
                                                                                                              color: listViewUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                              size: 15,
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            listViewUsersRecord.displayName!,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                ),
                                                                                                          ),
                                                                                                          if (responsiveVisibility(
                                                                                                            context: context,
                                                                                                            tablet: false,
                                                                                                            tabletLandscape: false,
                                                                                                            desktop: false,
                                                                                                          ))
                                                                                                            Text(
                                                                                                              listViewUsersRecord.email!,
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          Text(
                                                                                                            '@${listViewUsersRecord.nameUser}',
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.email!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  if (responsiveVisibility(
                                                                                                    context: context,
                                                                                                    phone: false,
                                                                                                  ))
                                                                                                    Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          listViewUsersRecord.numeroWhatsApp!,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                              ),
                                                                                                        ),
                                                                                                      ],
                                                                                                    ),
                                                                                                  Column(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                    children: [
                                                                                                      if (listViewUsersRecord.isTeamDNT ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'ppqfvmgv' /* Team DNT */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isTeamDNT! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isComerciante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'b4oxbxbb' /* Comerciante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isComerciante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isRepresentante ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'm8aepbza' /* Representante */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isRepresentante! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      if (listViewUsersRecord.isAdmin ?? true)
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '56fsiem9' /* Administrador */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                                                                                                              child: Icon(
                                                                                                                Icons.check,
                                                                                                                color: listViewUsersRecord.isAdmin! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                                size: 15,
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
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
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              if (responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 6, 6, 12),
                                                    child: Container(
                                                      width: 500,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x5900FFD8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          12,
                                                                          12,
                                                                          8),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Card(
                                                                        clipBehavior:
                                                                            Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0x2800FFD8),
                                                                        elevation:
                                                                            8,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              8),
                                                                          child:
                                                                              Icon(
                                                                            Icons.person,
                                                                            color:
                                                                                Color(0xFF00FFD8),
                                                                            size:
                                                                                30,
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
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '6fzie0if' /* SOLICITUDES DNT */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title2
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                          ),
                                                          Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 350,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          4,
                                                                          0,
                                                                          4),
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          EmpresasRecord>>(
                                                                    stream:
                                                                        queryEmpresasRecord(),
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
                                                                          return InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              FFAppState().update(() {
                                                                                FFAppState().EmpresaID = rowEmpresasRecord.reference;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              height: 40,
                                                                              decoration: BoxDecoration(),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0, 0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                  child: Text(
                                                                                    rowEmpresasRecord.nombre!,
                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                          fontFamily: 'Roboto',
                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                                Container(
                                                                  height: 50,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0x3800FFD8),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'f18l6kir' /* Usuario */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ei3t87dp' /* Empresa */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '6bc88gug' /* Usuario */,
                                                                            ),
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'goih9j6m' /* Fecha */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'twug7nb9' /* Estado */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                StreamBuilder<
                                                                    List<
                                                                        SolicitudesDNTRecord>>(
                                                                  stream:
                                                                      querySolicitudesDNTRecord(
                                                                    queryBuilder: (solicitudesDNTRecord) => solicitudesDNTRecord
                                                                        .where(
                                                                            'id_empresa',
                                                                            isEqualTo: FFAppState()
                                                                                .EmpresaID)
                                                                        .orderBy(
                                                                            'fecha_registro',
                                                                            descending:
                                                                                true),
                                                                  ),
                                                                  builder: (context,
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
                                                                            color:
                                                                                Color(0xFF1900FF),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    }
                                                                    List<SolicitudesDNTRecord>
                                                                        listViewSolicitudesDNTRecordList =
                                                                        snapshot
                                                                            .data!;
                                                                    return ListView
                                                                        .builder(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      itemCount:
                                                                          listViewSolicitudesDNTRecordList
                                                                              .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              listViewIndex) {
                                                                        final listViewSolicitudesDNTRecord =
                                                                            listViewSolicitudesDNTRecordList[listViewIndex];
                                                                        return Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(listViewSolicitudesDNTRecord.idUser!),
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
                                                                              final containerUsersRecord = snapshot.data!;
                                                                              return Container(
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0x3800FFD8),
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                          child: Stack(
                                                                                            alignment: AlignmentDirectional(1, 1),
                                                                                            children: [
                                                                                              Material(
                                                                                                color: Colors.transparent,
                                                                                                elevation: 8,
                                                                                                shape: const CircleBorder(),
                                                                                                child: Container(
                                                                                                  width: 40,
                                                                                                  height: 40,
                                                                                                  decoration: BoxDecoration(
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
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
                                                                                                        'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                      ),
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Icon(
                                                                                                Icons.verified_user,
                                                                                                color: containerUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                                size: 15,
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              containerUsersRecord.displayName!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              containerUsersRecord.email!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    fontSize: 10,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              '@${containerUsersRecord.nameUser}',
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    fontSize: 10,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    StreamBuilder<EmpresasRecord>(
                                                                                      stream: EmpresasRecord.getDocument(listViewSolicitudesDNTRecord.idEmpresa!),
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
                                                                                        final columnEmpresasRecord = snapshot.data!;
                                                                                        return Column(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Text(
                                                                                              columnEmpresasRecord.nombre!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                            Text(
                                                                                              listViewSolicitudesDNTRecord.usuarioEmpresa!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1,
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          'Enviado el: ${dateTimeFormat(
                                                                                            'd/M/y',
                                                                                            listViewSolicitudesDNTRecord.fechaRegistro,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          )}',
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    ActivadorSolicitudesWidget(
                                                                                      idSolicitud: listViewSolicitudesDNTRecord.reference,
                                                                                      idUser: containerUsersRecord.reference,
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
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
                                        if (responsiveVisibility(
                                          context: context,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 12, 12),
                                            child: Container(
                                              width: 500,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0x5900FFD8),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(0),
                                                        bottomRight:
                                                            Radius.circular(0),
                                                        topLeft:
                                                            Radius.circular(8),
                                                        topRight:
                                                            Radius.circular(8),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(10, 12,
                                                                  12, 8),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: Color(
                                                                    0x2800FFD8),
                                                                elevation: 8,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8,
                                                                          8,
                                                                          8,
                                                                          8),
                                                                  child: Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: Color(
                                                                        0xFF00FFD8),
                                                                    size: 30,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'f8uhsmwc' /* SOLICITUDES DNT */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .title2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBtnText,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    height: 0,
                                                    thickness: 1,
                                                    color: Color(0xFF00FFD8),
                                                  ),
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      maxHeight: 350,
                                                    ),
                                                    decoration: BoxDecoration(
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
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF00FFD8),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      4, 0, 4),
                                                          child: StreamBuilder<
                                                              List<
                                                                  EmpresasRecord>>(
                                                            stream:
                                                                queryEmpresasRecord(),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50,
                                                                    height: 50,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      color: Color(
                                                                          0xFF1900FF),
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
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    rowEmpresasRecordList
                                                                        .length,
                                                                    (rowIndex) {
                                                                  final rowEmpresasRecord =
                                                                      rowEmpresasRecordList[
                                                                          rowIndex];
                                                                  return InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      FFAppState()
                                                                          .update(
                                                                              () {
                                                                        FFAppState().EmpresaID =
                                                                            rowEmpresasRecord.reference;
                                                                      });
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      height:
                                                                          40,
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              10,
                                                                              0,
                                                                              10,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            rowEmpresasRecord.nombre!,
                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Container(
                                                          height: 50,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x3800FFD8),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'qlibnr40' /* Usuario */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
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
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'zy58oegn' /* Empresa */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                        ),
                                                                  ),
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'thtmbu73' /* Usuario */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1,
                                                                  ),
                                                                ],
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                              ))
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'mvxt92o0' /* Fecha */,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .title3
                                                                          .override(
                                                                            fontFamily:
                                                                                'Roboto',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      '3oaxddr2' /* Estado */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .title3
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBtnText,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        StreamBuilder<
                                                            List<
                                                                SolicitudesDNTRecord>>(
                                                          stream:
                                                              querySolicitudesDNTRecord(
                                                            queryBuilder: (solicitudesDNTRecord) => solicitudesDNTRecord
                                                                .where(
                                                                    'id_empresa',
                                                                    isEqualTo:
                                                                        FFAppState()
                                                                            .EmpresaID)
                                                                .orderBy(
                                                                    'fecha_registro',
                                                                    descending:
                                                                        true),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 50,
                                                                  height: 50,
                                                                  child:
                                                                      CircularProgressIndicator(
                                                                    color: Color(
                                                                        0xFF1900FF),
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            List<SolicitudesDNTRecord>
                                                                listViewSolicitudesDNTRecordList =
                                                                snapshot.data!;
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewSolicitudesDNTRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewSolicitudesDNTRecord =
                                                                    listViewSolicitudesDNTRecordList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                  child: StreamBuilder<
                                                                      UsersRecord>(
                                                                    stream: UsersRecord.getDocument(
                                                                        listViewSolicitudesDNTRecord
                                                                            .idUser!),
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
                                                                      final containerUsersRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Container(
                                                                        height:
                                                                            60,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0x3800FFD8),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceAround,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                  child: Stack(
                                                                                    alignment: AlignmentDirectional(1, 1),
                                                                                    children: [
                                                                                      Material(
                                                                                        color: Colors.transparent,
                                                                                        elevation: 8,
                                                                                        shape: const CircleBorder(),
                                                                                        child: Container(
                                                                                          width: 40,
                                                                                          height: 40,
                                                                                          decoration: BoxDecoration(
                                                                                            shape: BoxShape.circle,
                                                                                          ),
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
                                                                                                'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                              ),
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                      Icon(
                                                                                        Icons.verified_user,
                                                                                        color: containerUsersRecord.usuarioVerificado! ? FlutterFlowTheme.of(context).customColor1 : Color(0x2006013B),
                                                                                        size: 15,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      containerUsersRecord.displayName!,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      containerUsersRecord.email!,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 8,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      '@${containerUsersRecord.nameUser}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 8,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            StreamBuilder<EmpresasRecord>(
                                                                              stream: EmpresasRecord.getDocument(listViewSolicitudesDNTRecord.idEmpresa!),
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
                                                                                final columnEmpresasRecord = snapshot.data!;
                                                                                return Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      columnEmpresasRecord.nombre!,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      listViewSolicitudesDNTRecord.usuarioEmpresa!,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            fontSize: 8,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              },
                                                                            ),
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                            ))
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    'Enviado el: ${dateTimeFormat(
                                                                                      'd/M/y',
                                                                                      listViewSolicitudesDNTRecord.fechaRegistro,
                                                                                      locale: FFLocalizations.of(context).languageCode,
                                                                                    )}',
                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                          fontFamily: 'Roboto Condensed',
                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                        ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ActivadorSolicitudesWidget(
                                                                              idSolicitud: listViewSolicitudesDNTRecord.reference,
                                                                              idUser: containerUsersRecord.reference,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
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
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x2700FFD8),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 20, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cmuzd457' /* GESTOR DE INTERFAZ */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 0, 6, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 6, 6, 12),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 8,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 500,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x5900FFD8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            12,
                                                                            12,
                                                                            8),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x2800FFD8),
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                8,
                                                                                8,
                                                                                8),
                                                                            child:
                                                                                Icon(
                                                                              Icons.group,
                                                                              color: Color(0xFF00FFD8),
                                                                              size: 30,
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
                                                                            FFLocalizations.of(context).getText(
                                                                              '8unibym2' /* TEAM DNT */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                MouseRegion(
                                                                              opaque: false,
                                                                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Color(0xFF00FFD8),
                                                                                borderRadius: 8,
                                                                                borderWidth: 1,
                                                                                buttonSize: 40,
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  color: mouseRegionHovered2! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  size: 24,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    isDismissible: false,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return Padding(
                                                                                        padding: MediaQuery.of(context).viewInsets,
                                                                                        child: AddsTeamWidget(),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0,
                                                              thickness: 1,
                                                              color: Color(
                                                                  0xFF00FFD8),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFD8),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      EquipoRecord>>(
                                                                stream:
                                                                    queryEquipoRecord(),
                                                                builder: (context,
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
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<EquipoRecord>
                                                                      listViewEquipoRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewEquipoRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewEquipoRecord =
                                                                          listViewEquipoRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child: StreamBuilder<
                                                                            CodPaisesRecord>(
                                                                          stream:
                                                                              CodPaisesRecord.getDocument(listViewEquipoRecord.iDPais!),
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
                                                                            final containerCodPaisesRecord =
                                                                                snapshot.data!;
                                                                            return Material(
                                                                              color: Colors.transparent,
                                                                              elevation: 2,
                                                                              child: Container(
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0x5A000425),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 45,
                                                                                            height: 45,
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4,
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                  ),
                                                                                                  child: Container(
                                                                                                    width: 40,
                                                                                                    height: 40,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF000425),
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.cover,
                                                                                                        image: Image.network(
                                                                                                          listViewEquipoRecord.foto!,
                                                                                                        ).image,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(4),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(1, 1),
                                                                                                  child: Container(
                                                                                                    width: 18,
                                                                                                    height: 18,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      containerCodPaisesRecord.icono!,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  listViewEquipoRecord.nombre!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  containerCodPaisesRecord.pais!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        fontSize: 10,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 180,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewEquipoRecord.descripsion!,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'djq40fi1' /* Col 01 */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                child: Icon(
                                                                                                  Icons.color_lens,
                                                                                                  color: listViewEquipoRecord.color,
                                                                                                  size: 15,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '810cb4ec' /* Col 02 */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                child: Icon(
                                                                                                  Icons.color_lens,
                                                                                                  color: listViewEquipoRecord.color2,
                                                                                                  size: 15,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  isDismissible: false,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return Padding(
                                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                                      child: EditarTeamWidget(
                                                                                                        idTeam: listViewEquipoRecord.reference,
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.settings,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
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
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 6, 6, 12),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 8,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 500,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x5900FFD8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            12,
                                                                            12,
                                                                            8),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x2800FFD8),
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                8,
                                                                                8,
                                                                                8),
                                                                            child:
                                                                                Icon(
                                                                              Icons.business,
                                                                              color: Color(0xFF00FFD8),
                                                                              size: 30,
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
                                                                            FFLocalizations.of(context).getText(
                                                                              'efg3rckd' /* EMPRESAS */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: Color(0xFF00FFD8),
                                                                              borderRadius: 8,
                                                                              borderWidth: 1,
                                                                              buttonSize: 40,
                                                                              icon: Icon(
                                                                                Icons.add,
                                                                                color: mouseRegionHovered3! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  isDismissible: false,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return Padding(
                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                      child: AddsEmpresaWidget(),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              },
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered3 = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered3 = false);
                                                                            }),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0,
                                                              thickness: 1,
                                                              color: Color(
                                                                  0xFF00FFD8),
                                                            ),
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxHeight: 350,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFD8),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      EmpresasRecord>>(
                                                                stream:
                                                                    queryEmpresasRecord(),
                                                                builder: (context,
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
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<EmpresasRecord>
                                                                      listViewEmpresasRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewEmpresasRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewEmpresasRecord =
                                                                          listViewEmpresasRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child: StreamBuilder<
                                                                            CodPaisesRecord>(
                                                                          stream:
                                                                              CodPaisesRecord.getDocument(listViewEmpresasRecord.idPais!),
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
                                                                            final containerCodPaisesRecord =
                                                                                snapshot.data!;
                                                                            return Material(
                                                                              color: Colors.transparent,
                                                                              elevation: 2,
                                                                              child: Container(
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0x5A000425),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 45,
                                                                                            height: 45,
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4,
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                  ),
                                                                                                  child: Container(
                                                                                                    width: 40,
                                                                                                    height: 40,
                                                                                                    decoration: BoxDecoration(
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.cover,
                                                                                                        image: Image.network(
                                                                                                          listViewEmpresasRecord.icono!,
                                                                                                        ).image,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(4),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(1, 1),
                                                                                                  child: Container(
                                                                                                    width: 18,
                                                                                                    height: 18,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      containerCodPaisesRecord.icono!,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  listViewEmpresasRecord.nombre!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  containerCodPaisesRecord.pais!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        fontSize: 10,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 180,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewEmpresasRecord.descripsion!,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 4, 0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  isDismissible: false,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return Padding(
                                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                                      child: EditarEmpresaWidget(
                                                                                                        idEmpresa: listViewEmpresasRecord.reference,
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.settings,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
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
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 6, 6, 12),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 8,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 500,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x5900FFD8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            12,
                                                                            12,
                                                                            8),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x2800FFD8),
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                8,
                                                                                8,
                                                                                8),
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_photo_alternate,
                                                                              color: Color(0xFF00FFD8),
                                                                              size: 30,
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
                                                                            FFLocalizations.of(context).getText(
                                                                              'gtoub4m0' /* NOTICIAS DASHBOARD */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                MouseRegion(
                                                                              opaque: false,
                                                                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Color(0xFF00FFD8),
                                                                                borderRadius: 8,
                                                                                borderWidth: 1,
                                                                                buttonSize: 40,
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  color: mouseRegionHovered4! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  size: 24,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    isDismissible: false,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return Padding(
                                                                                        padding: MediaQuery.of(context).viewInsets,
                                                                                        child: AddsDashboardWidget(),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0,
                                                              thickness: 1,
                                                              color: Color(
                                                                  0xFF00FFD8),
                                                            ),
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxHeight: 350,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFD8),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      NoticiasDashboardRecord>>(
                                                                stream:
                                                                    queryNoticiasDashboardRecord(),
                                                                builder: (context,
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
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<NoticiasDashboardRecord>
                                                                      listViewNoticiasDashboardRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewNoticiasDashboardRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewNoticiasDashboardRecord =
                                                                          listViewNoticiasDashboardRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                60,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x5A000425),
                                                                              border: Border.all(
                                                                                color: Colors.transparent,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 70,
                                                                                        height: 40,
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Material(
                                                                                              color: Colors.transparent,
                                                                                              elevation: 4,
                                                                                              shape: RoundedRectangleBorder(
                                                                                                borderRadius: BorderRadius.circular(4),
                                                                                              ),
                                                                                              child: Container(
                                                                                                width: 70,
                                                                                                height: 40,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Color(0xFF000425),
                                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                                ),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    await Navigator.push(
                                                                                                      context,
                                                                                                      PageTransition(
                                                                                                        type: PageTransitionType.fade,
                                                                                                        child: FlutterFlowExpandedImageView(
                                                                                                          image: Image.network(
                                                                                                            listViewNoticiasDashboardRecord.imagen!,
                                                                                                            fit: BoxFit.contain,
                                                                                                          ),
                                                                                                          allowRotation: false,
                                                                                                          tag: listViewNoticiasDashboardRecord.imagen!,
                                                                                                          useHeroAnimation: true,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                  child: Hero(
                                                                                                    tag: listViewNoticiasDashboardRecord.imagen!,
                                                                                                    transitionOnUserGestures: true,
                                                                                                    child: ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(4),
                                                                                                      child: Image.network(
                                                                                                        listViewNoticiasDashboardRecord.imagen!,
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
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 100,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewNoticiasDashboardRecord.titulo!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                                                                        child: Container(
                                                                                          constraints: BoxConstraints(
                                                                                            maxWidth: 180,
                                                                                          ),
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Text(
                                                                                            listViewNoticiasDashboardRecord.descripsion!,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'mgs3ps7e' /* Col 01 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Icon(
                                                                                              Icons.color_lens,
                                                                                              color: listViewNoticiasDashboardRecord.color01,
                                                                                              size: 15,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'xtnsl12o' /* Col 02 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Icon(
                                                                                              Icons.color_lens,
                                                                                              color: listViewNoticiasDashboardRecord.color02,
                                                                                              size: 15,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 4, 0),
                                                                                        child: InkWell(
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return Padding(
                                                                                                  padding: MediaQuery.of(context).viewInsets,
                                                                                                  child: EditarDashboardWidget(
                                                                                                    idNoticia: listViewNoticiasDashboardRecord.reference,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => setState(() {}));
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.settings,
                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                            size: 20,
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
                                                                      );
                                                                    },
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
                                  ),
                                ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                desktop: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 12, 12, 12),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x2700FFD8),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 20, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '76e3rn3n' /* GESTOR DE INTERFAZ */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 0, 6, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 6, 6, 12),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 8,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 500,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x5900FFD8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            12,
                                                                            12,
                                                                            8),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x2800FFD8),
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                8,
                                                                                8,
                                                                                8),
                                                                            child:
                                                                                Icon(
                                                                              Icons.group,
                                                                              color: Color(0xFF00FFD8),
                                                                              size: 30,
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
                                                                            FFLocalizations.of(context).getText(
                                                                              '8l41vmg3' /* TEAM DNT */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                MouseRegion(
                                                                              opaque: false,
                                                                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Color(0xFF00FFD8),
                                                                                borderRadius: 8,
                                                                                borderWidth: 1,
                                                                                buttonSize: 40,
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  color: mouseRegionHovered5! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  size: 24,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    isDismissible: false,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return Padding(
                                                                                        padding: MediaQuery.of(context).viewInsets,
                                                                                        child: AddsTeamWidget(),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0,
                                                              thickness: 1,
                                                              color: Color(
                                                                  0xFF00FFD8),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFD8),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      EquipoRecord>>(
                                                                stream:
                                                                    queryEquipoRecord(),
                                                                builder: (context,
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
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<EquipoRecord>
                                                                      listViewEquipoRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewEquipoRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewEquipoRecord =
                                                                          listViewEquipoRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child: StreamBuilder<
                                                                            CodPaisesRecord>(
                                                                          stream:
                                                                              CodPaisesRecord.getDocument(listViewEquipoRecord.iDPais!),
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
                                                                            final containerCodPaisesRecord =
                                                                                snapshot.data!;
                                                                            return Material(
                                                                              color: Colors.transparent,
                                                                              elevation: 2,
                                                                              child: Container(
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0x5A000425),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 45,
                                                                                            height: 45,
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4,
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                  ),
                                                                                                  child: Container(
                                                                                                    width: 40,
                                                                                                    height: 40,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: Color(0xFF000425),
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.cover,
                                                                                                        image: Image.network(
                                                                                                          listViewEquipoRecord.foto!,
                                                                                                        ).image,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(4),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(1, 1),
                                                                                                  child: Container(
                                                                                                    width: 18,
                                                                                                    height: 18,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      containerCodPaisesRecord.icono!,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  listViewEquipoRecord.nombre!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  containerCodPaisesRecord.pais!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        fontSize: 10,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 180,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewEquipoRecord.descripsion!,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'bxk67tgc' /* Col 01 */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                child: Icon(
                                                                                                  Icons.color_lens,
                                                                                                  color: listViewEquipoRecord.color,
                                                                                                  size: 15,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '80o68bgq' /* Col 02 */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                child: Icon(
                                                                                                  Icons.color_lens,
                                                                                                  color: listViewEquipoRecord.color2,
                                                                                                  size: 15,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  isDismissible: false,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return Padding(
                                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                                      child: EditarTeamWidget(
                                                                                                        idTeam: listViewEquipoRecord.reference,
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.settings,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
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
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 6, 6, 12),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 8,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 500,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x5900FFD8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            12,
                                                                            12,
                                                                            8),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x2800FFD8),
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                8,
                                                                                8,
                                                                                8),
                                                                            child:
                                                                                Icon(
                                                                              Icons.business,
                                                                              color: Color(0xFF00FFD8),
                                                                              size: 30,
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
                                                                            FFLocalizations.of(context).getText(
                                                                              'nxsoxfed' /* EMPRESAS */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: Color(0xFF00FFD8),
                                                                              borderRadius: 8,
                                                                              borderWidth: 1,
                                                                              buttonSize: 40,
                                                                              icon: Icon(
                                                                                Icons.add,
                                                                                color: mouseRegionHovered6! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  isDismissible: false,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return Padding(
                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                      child: AddsEmpresaWidget(),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              },
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered6 = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered6 = false);
                                                                            }),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0,
                                                              thickness: 1,
                                                              color: Color(
                                                                  0xFF00FFD8),
                                                            ),
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxHeight: 350,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFD8),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      EmpresasRecord>>(
                                                                stream:
                                                                    queryEmpresasRecord(),
                                                                builder: (context,
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
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<EmpresasRecord>
                                                                      listViewEmpresasRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewEmpresasRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewEmpresasRecord =
                                                                          listViewEmpresasRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child: StreamBuilder<
                                                                            CodPaisesRecord>(
                                                                          stream:
                                                                              CodPaisesRecord.getDocument(listViewEmpresasRecord.idPais!),
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
                                                                            final containerCodPaisesRecord =
                                                                                snapshot.data!;
                                                                            return Material(
                                                                              color: Colors.transparent,
                                                                              elevation: 2,
                                                                              child: Container(
                                                                                height: 60,
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0x5A000425),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Container(
                                                                                            width: 45,
                                                                                            height: 45,
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Material(
                                                                                                  color: Colors.transparent,
                                                                                                  elevation: 4,
                                                                                                  shape: RoundedRectangleBorder(
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                  ),
                                                                                                  child: Container(
                                                                                                    width: 40,
                                                                                                    height: 40,
                                                                                                    decoration: BoxDecoration(
                                                                                                      image: DecorationImage(
                                                                                                        fit: BoxFit.cover,
                                                                                                        image: Image.network(
                                                                                                          listViewEmpresasRecord.icono!,
                                                                                                        ).image,
                                                                                                      ),
                                                                                                      borderRadius: BorderRadius.circular(4),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(1, 1),
                                                                                                  child: Container(
                                                                                                    width: 18,
                                                                                                    height: 18,
                                                                                                    clipBehavior: Clip.antiAlias,
                                                                                                    decoration: BoxDecoration(
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                    child: Image.network(
                                                                                                      containerCodPaisesRecord.icono!,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                            child: Column(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                                              children: [
                                                                                                Text(
                                                                                                  listViewEmpresasRecord.nombre!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      ),
                                                                                                ),
                                                                                                Text(
                                                                                                  containerCodPaisesRecord.pais!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        fontSize: 10,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 180,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewEmpresasRecord.descripsion!,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 4, 0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                await showModalBottomSheet(
                                                                                                  isScrollControlled: true,
                                                                                                  backgroundColor: Colors.transparent,
                                                                                                  isDismissible: false,
                                                                                                  enableDrag: false,
                                                                                                  context: context,
                                                                                                  builder: (context) {
                                                                                                    return Padding(
                                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                                      child: EditarEmpresaWidget(
                                                                                                        idEmpresa: listViewEmpresasRecord.reference,
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.settings,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 0, 6, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                6, 0, 6, 12),
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 8,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Container(
                                                        width: 500,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x5900FFD8),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10,
                                                                            12,
                                                                            12,
                                                                            8),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Card(
                                                                          clipBehavior:
                                                                              Clip.antiAliasWithSaveLayer,
                                                                          color:
                                                                              Color(0x2800FFD8),
                                                                          elevation:
                                                                              8,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                8,
                                                                                8,
                                                                                8),
                                                                            child:
                                                                                Icon(
                                                                              Icons.add_photo_alternate,
                                                                              color: Color(0xFF00FFD8),
                                                                              size: 30,
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
                                                                            FFLocalizations.of(context).getText(
                                                                              'q79cip2k' /* NOTICIAS DASHBOARD */,
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).title2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                MouseRegion(
                                                                              opaque: false,
                                                                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                              child: FlutterFlowIconButton(
                                                                                borderColor: Color(0xFF00FFD8),
                                                                                borderRadius: 8,
                                                                                borderWidth: 1,
                                                                                buttonSize: 40,
                                                                                icon: Icon(
                                                                                  Icons.add,
                                                                                  color: mouseRegionHovered7! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  size: 24,
                                                                                ),
                                                                                onPressed: () async {
                                                                                  await showModalBottomSheet(
                                                                                    isScrollControlled: true,
                                                                                    backgroundColor: Colors.transparent,
                                                                                    isDismissible: false,
                                                                                    enableDrag: false,
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      return Padding(
                                                                                        padding: MediaQuery.of(context).viewInsets,
                                                                                        child: AddsDashboardWidget(),
                                                                                      );
                                                                                    },
                                                                                  ).then((value) => setState(() {}));
                                                                                },
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
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              height: 0,
                                                              thickness: 1,
                                                              color: Color(
                                                                  0xFF00FFD8),
                                                            ),
                                                            Container(
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxHeight: 350,
                                                              ),
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .transparent,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0),
                                                                ),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF00FFD8),
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      NoticiasDashboardRecord>>(
                                                                stream:
                                                                    queryNoticiasDashboardRecord(),
                                                                builder: (context,
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
                                                                          color:
                                                                              Color(0xFF1900FF),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<NoticiasDashboardRecord>
                                                                      listViewNoticiasDashboardRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  return ListView
                                                                      .builder(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    itemCount:
                                                                        listViewNoticiasDashboardRecordList
                                                                            .length,
                                                                    itemBuilder:
                                                                        (context,
                                                                            listViewIndex) {
                                                                      final listViewNoticiasDashboardRecord =
                                                                          listViewNoticiasDashboardRecordList[
                                                                              listViewIndex];
                                                                      return Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              2,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                60,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0x5A000425),
                                                                              border: Border.all(
                                                                                color: Colors.transparent,
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Container(
                                                                                        width: 70,
                                                                                        height: 40,
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Material(
                                                                                              color: Colors.transparent,
                                                                                              elevation: 4,
                                                                                              shape: RoundedRectangleBorder(
                                                                                                borderRadius: BorderRadius.circular(4),
                                                                                              ),
                                                                                              child: Container(
                                                                                                width: 70,
                                                                                                height: 40,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: Color(0xFF000425),
                                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                                ),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    await Navigator.push(
                                                                                                      context,
                                                                                                      PageTransition(
                                                                                                        type: PageTransitionType.fade,
                                                                                                        child: FlutterFlowExpandedImageView(
                                                                                                          image: Image.network(
                                                                                                            listViewNoticiasDashboardRecord.imagen!,
                                                                                                            fit: BoxFit.contain,
                                                                                                          ),
                                                                                                          allowRotation: false,
                                                                                                          tag: listViewNoticiasDashboardRecord.imagen!,
                                                                                                          useHeroAnimation: true,
                                                                                                        ),
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                  child: Hero(
                                                                                                    tag: listViewNoticiasDashboardRecord.imagen!,
                                                                                                    transitionOnUserGestures: true,
                                                                                                    child: ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(4),
                                                                                                      child: Image.network(
                                                                                                        listViewNoticiasDashboardRecord.imagen!,
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
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 100,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewNoticiasDashboardRecord.titulo!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                                                                        child: Container(
                                                                                          constraints: BoxConstraints(
                                                                                            maxWidth: 180,
                                                                                          ),
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Text(
                                                                                            listViewNoticiasDashboardRecord.descripsion!,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '1hc2bwov' /* Col 01 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Icon(
                                                                                              Icons.color_lens,
                                                                                              color: listViewNoticiasDashboardRecord.color01,
                                                                                              size: 15,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'a9whb5u7' /* Col 02 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Icon(
                                                                                              Icons.color_lens,
                                                                                              color: listViewNoticiasDashboardRecord.color02,
                                                                                              size: 15,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 4, 0),
                                                                                        child: InkWell(
                                                                                          onTap: () async {
                                                                                            await showModalBottomSheet(
                                                                                              isScrollControlled: true,
                                                                                              backgroundColor: Colors.transparent,
                                                                                              enableDrag: false,
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                return Padding(
                                                                                                  padding: MediaQuery.of(context).viewInsets,
                                                                                                  child: EditarDashboardWidget(
                                                                                                    idNoticia: listViewNoticiasDashboardRecord.reference,
                                                                                                  ),
                                                                                                );
                                                                                              },
                                                                                            ).then((value) => setState(() {}));
                                                                                          },
                                                                                          child: Icon(
                                                                                            Icons.settings,
                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                            size: 20,
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
                                                                      );
                                                                    },
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
                                      12, 12, 12, 12),
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 8,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0x2700FFD8),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 20, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'eo7egz16' /* GESTOR DE INTERFAZ */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 12, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(6, 6, 6, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 8,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Container(
                                                      width: 500,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x5900FFD8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          12,
                                                                          12,
                                                                          8),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Card(
                                                                        clipBehavior:
                                                                            Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0x2800FFD8),
                                                                        elevation:
                                                                            8,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              8),
                                                                          child:
                                                                              Icon(
                                                                            Icons.group,
                                                                            color:
                                                                                Color(0xFF00FFD8),
                                                                            size:
                                                                                30,
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
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'ij3y9dq9' /* TEAM DNT */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title2
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: Color(0xFF00FFD8),
                                                                              borderRadius: 8,
                                                                              borderWidth: 1,
                                                                              buttonSize: 40,
                                                                              icon: Icon(
                                                                                Icons.add,
                                                                                color: mouseRegionHovered8! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  isDismissible: false,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return Padding(
                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                      child: AddsTeamWidget(),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              },
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered8 = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered8 = false);
                                                                            }),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                          ),
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: StreamBuilder<
                                                                List<
                                                                    EquipoRecord>>(
                                                              stream:
                                                                  queryEquipoRecord(),
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
                                                                List<EquipoRecord>
                                                                    listViewEquipoRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewEquipoRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewEquipoRecord =
                                                                        listViewEquipoRecordList[
                                                                            listViewIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1),
                                                                      child: StreamBuilder<
                                                                          CodPaisesRecord>(
                                                                        stream:
                                                                            CodPaisesRecord.getDocument(listViewEquipoRecord.iDPais!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          final containerCodPaisesRecord =
                                                                              snapshot.data!;
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2,
                                                                            child:
                                                                                Container(
                                                                              height: 60,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x5A000425),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 45,
                                                                                          height: 45,
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              Material(
                                                                                                color: Colors.transparent,
                                                                                                elevation: 4,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                                ),
                                                                                                child: Container(
                                                                                                  width: 40,
                                                                                                  height: 40,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFF000425),
                                                                                                    image: DecorationImage(
                                                                                                      fit: BoxFit.cover,
                                                                                                      image: Image.network(
                                                                                                        listViewEquipoRecord.foto!,
                                                                                                      ).image,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(1, 1),
                                                                                                child: Container(
                                                                                                  width: 18,
                                                                                                  height: 18,
                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                  decoration: BoxDecoration(
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                  child: Image.network(
                                                                                                    containerCodPaisesRecord.icono!,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                listViewEquipoRecord.nombre!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                containerCodPaisesRecord.pais!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      fontSize: 8,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                        ))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 180,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewEquipoRecord.descripsion!,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
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
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'c19iti5w' /* Col 01 */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                child: Icon(
                                                                                                  Icons.color_lens,
                                                                                                  color: listViewEquipoRecord.color,
                                                                                                  size: 15,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  '7v1hgiz0' /* Col 02 */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                child: Icon(
                                                                                                  Icons.color_lens,
                                                                                                  color: listViewEquipoRecord.color2,
                                                                                                  size: 15,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                isDismissible: false,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: EditarTeamWidget(
                                                                                                      idTeam: listViewEquipoRecord.reference,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.settings,
                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              size: 20,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(6, 6, 6, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 8,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Container(
                                                      width: 500,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x5900FFD8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          12,
                                                                          12,
                                                                          8),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Card(
                                                                        clipBehavior:
                                                                            Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0x2800FFD8),
                                                                        elevation:
                                                                            8,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              8),
                                                                          child:
                                                                              Icon(
                                                                            Icons.business,
                                                                            color:
                                                                                Color(0xFF00FFD8),
                                                                            size:
                                                                                30,
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
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'orz4ckmb' /* EMPRESAS */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title2
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        MouseRegion(
                                                                          opaque:
                                                                              false,
                                                                          cursor:
                                                                              MouseCursor.defer ?? MouseCursor.defer,
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Color(0xFF00FFD8),
                                                                            borderRadius:
                                                                                8,
                                                                            borderWidth:
                                                                                1,
                                                                            buttonSize:
                                                                                40,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.add,
                                                                              color: mouseRegionHovered9! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                              size: 24,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              await showModalBottomSheet(
                                                                                isScrollControlled: true,
                                                                                backgroundColor: Colors.transparent,
                                                                                isDismissible: false,
                                                                                enableDrag: false,
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  return Padding(
                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                    child: AddsEmpresaWidget(),
                                                                                  );
                                                                                },
                                                                              ).then((value) => setState(() {}));
                                                                            },
                                                                          ),
                                                                          onEnter:
                                                                              ((event) async {
                                                                            setState(() =>
                                                                                mouseRegionHovered9 = true);
                                                                          }),
                                                                          onExit:
                                                                              ((event) async {
                                                                            setState(() =>
                                                                                mouseRegionHovered9 = false);
                                                                          }),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                          ),
                                                          Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 350,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: StreamBuilder<
                                                                List<
                                                                    EmpresasRecord>>(
                                                              stream:
                                                                  queryEmpresasRecord(),
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
                                                                List<EmpresasRecord>
                                                                    listViewEmpresasRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewEmpresasRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewEmpresasRecord =
                                                                        listViewEmpresasRecordList[
                                                                            listViewIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1),
                                                                      child: StreamBuilder<
                                                                          CodPaisesRecord>(
                                                                        stream:
                                                                            CodPaisesRecord.getDocument(listViewEmpresasRecord.idPais!),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
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
                                                                          final containerCodPaisesRecord =
                                                                              snapshot.data!;
                                                                          return Material(
                                                                            color:
                                                                                Colors.transparent,
                                                                            elevation:
                                                                                2,
                                                                            child:
                                                                                Container(
                                                                              height: 60,
                                                                              decoration: BoxDecoration(
                                                                                color: Color(0x5A000425),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 45,
                                                                                          height: 45,
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              Material(
                                                                                                color: Colors.transparent,
                                                                                                elevation: 4,
                                                                                                shape: RoundedRectangleBorder(
                                                                                                  borderRadius: BorderRadius.circular(4),
                                                                                                ),
                                                                                                child: Container(
                                                                                                  width: 40,
                                                                                                  height: 40,
                                                                                                  decoration: BoxDecoration(
                                                                                                    image: DecorationImage(
                                                                                                      fit: BoxFit.cover,
                                                                                                      image: Image.network(
                                                                                                        listViewEmpresasRecord.icono!,
                                                                                                      ).image,
                                                                                                    ),
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(1, 1),
                                                                                                child: Container(
                                                                                                  width: 18,
                                                                                                  height: 18,
                                                                                                  clipBehavior: Clip.antiAlias,
                                                                                                  decoration: BoxDecoration(
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                  child: Image.network(
                                                                                                    containerCodPaisesRecord.icono!,
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                listViewEmpresasRecord.nombre!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                              Text(
                                                                                                containerCodPaisesRecord.pais!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      fontSize: 8,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                        ))
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                                                                            child: Container(
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 180,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Text(
                                                                                                listViewEmpresasRecord.descripsion!,
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 10,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.end,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 4, 0),
                                                                                          child: InkWell(
                                                                                            onTap: () async {
                                                                                              await showModalBottomSheet(
                                                                                                isScrollControlled: true,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                isDismissible: false,
                                                                                                enableDrag: false,
                                                                                                context: context,
                                                                                                builder: (context) {
                                                                                                  return Padding(
                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                    child: EditarEmpresaWidget(
                                                                                                      idEmpresa: listViewEmpresasRecord.reference,
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                              ).then((value) => setState(() {}));
                                                                                            },
                                                                                            child: Icon(
                                                                                              Icons.settings,
                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              size: 20,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(6, 6, 6, 12),
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 8,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Container(
                                                      width: 500,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x5900FFD8),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                topRight: Radius
                                                                    .circular(
                                                                        8),
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          12,
                                                                          12,
                                                                          8),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Card(
                                                                        clipBehavior:
                                                                            Clip.antiAliasWithSaveLayer,
                                                                        color: Color(
                                                                            0x2800FFD8),
                                                                        elevation:
                                                                            8,
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8,
                                                                              8,
                                                                              8,
                                                                              8),
                                                                          child:
                                                                              Icon(
                                                                            Icons.add_photo_alternate,
                                                                            color:
                                                                                Color(0xFF00FFD8),
                                                                            size:
                                                                                30,
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
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '4d2kebmr' /* NOTICIAS DASHBOARD */,
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .title2
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              MouseRegion(
                                                                            opaque:
                                                                                false,
                                                                            cursor:
                                                                                MouseCursor.defer ?? MouseCursor.defer,
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: Color(0xFF00FFD8),
                                                                              borderRadius: 8,
                                                                              borderWidth: 1,
                                                                              buttonSize: 40,
                                                                              icon: Icon(
                                                                                Icons.add,
                                                                                color: mouseRegionHovered10! ? FlutterFlowTheme.of(context).alternateTwo : FlutterFlowTheme.of(context).primaryBtnText,
                                                                                size: 24,
                                                                              ),
                                                                              onPressed: () async {
                                                                                await showModalBottomSheet(
                                                                                  isScrollControlled: true,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  isDismissible: false,
                                                                                  enableDrag: false,
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    return Padding(
                                                                                      padding: MediaQuery.of(context).viewInsets,
                                                                                      child: AddsDashboardWidget(),
                                                                                    );
                                                                                  },
                                                                                ).then((value) => setState(() {}));
                                                                              },
                                                                            ),
                                                                            onEnter:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered10 = true);
                                                                            }),
                                                                            onExit:
                                                                                ((event) async {
                                                                              setState(() => mouseRegionHovered10 = false);
                                                                            }),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 0,
                                                            thickness: 1,
                                                            color: Color(
                                                                0xFF00FFD8),
                                                          ),
                                                          Container(
                                                            constraints:
                                                                BoxConstraints(
                                                              maxHeight: 350,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        8),
                                                                bottomRight:
                                                                    Radius
                                                                        .circular(
                                                                            8),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFF00FFD8),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: StreamBuilder<
                                                                List<
                                                                    NoticiasDashboardRecord>>(
                                                              stream:
                                                                  queryNoticiasDashboardRecord(),
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
                                                                List<NoticiasDashboardRecord>
                                                                    listViewNoticiasDashboardRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      listViewNoticiasDashboardRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewNoticiasDashboardRecord =
                                                                        listViewNoticiasDashboardRecordList[
                                                                            listViewIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              0,
                                                                              0,
                                                                              1),
                                                                      child:
                                                                          Material(
                                                                        color: Colors
                                                                            .transparent,
                                                                        elevation:
                                                                            2,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              60,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0x5A000425),
                                                                            border:
                                                                                Border.all(
                                                                              color: Colors.transparent,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8,
                                                                                0,
                                                                                8,
                                                                                0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 70,
                                                                                      height: 40,
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 4,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(4),
                                                                                            ),
                                                                                            child: Container(
                                                                                              width: 70,
                                                                                              height: 40,
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0xFF000425),
                                                                                                borderRadius: BorderRadius.circular(4),
                                                                                              ),
                                                                                              child: InkWell(
                                                                                                onTap: () async {
                                                                                                  await Navigator.push(
                                                                                                    context,
                                                                                                    PageTransition(
                                                                                                      type: PageTransitionType.fade,
                                                                                                      child: FlutterFlowExpandedImageView(
                                                                                                        image: Image.network(
                                                                                                          listViewNoticiasDashboardRecord.imagen!,
                                                                                                          fit: BoxFit.contain,
                                                                                                        ),
                                                                                                        allowRotation: false,
                                                                                                        tag: listViewNoticiasDashboardRecord.imagen!,
                                                                                                        useHeroAnimation: true,
                                                                                                      ),
                                                                                                    ),
                                                                                                  );
                                                                                                },
                                                                                                child: Hero(
                                                                                                  tag: listViewNoticiasDashboardRecord.imagen!,
                                                                                                  transitionOnUserGestures: true,
                                                                                                  child: ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(4),
                                                                                                    child: Image.network(
                                                                                                      listViewNoticiasDashboardRecord.imagen!,
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
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Container(
                                                                                            constraints: BoxConstraints(
                                                                                              maxWidth: 100,
                                                                                            ),
                                                                                            decoration: BoxDecoration(),
                                                                                            child: Text(
                                                                                              listViewNoticiasDashboardRecord.titulo!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                    ))
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                                                                                        child: Container(
                                                                                          constraints: BoxConstraints(
                                                                                            maxWidth: 180,
                                                                                          ),
                                                                                          decoration: BoxDecoration(),
                                                                                          child: Text(
                                                                                            listViewNoticiasDashboardRecord.descripsion!,
                                                                                            maxLines: 2,
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
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
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '9i3id0za' /* Col 01 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Icon(
                                                                                              Icons.color_lens,
                                                                                              color: listViewNoticiasDashboardRecord.color01,
                                                                                              size: 15,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '1aq39hgb' /* Col 02 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  fontSize: 10,
                                                                                                ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                            child: Icon(
                                                                                              Icons.color_lens,
                                                                                              color: listViewNoticiasDashboardRecord.color02,
                                                                                              size: 15,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 4, 0),
                                                                                      child: InkWell(
                                                                                        onTap: () async {
                                                                                          await showModalBottomSheet(
                                                                                            isScrollControlled: true,
                                                                                            backgroundColor: Colors.transparent,
                                                                                            enableDrag: false,
                                                                                            context: context,
                                                                                            builder: (context) {
                                                                                              return Padding(
                                                                                                padding: MediaQuery.of(context).viewInsets,
                                                                                                child: EditarDashboardWidget(
                                                                                                  idNoticia: listViewNoticiasDashboardRecord.reference,
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          ).then((value) => setState(() {}));
                                                                                        },
                                                                                        child: Icon(
                                                                                          Icons.settings,
                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                          size: 20,
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
                                                                    );
                                                                  },
                                                                );
                                                              },
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
                                  ),
                                ),
                            ],
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
      ),
    );
  }
}
