import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/menu_izquierdo_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerificacionIDWidget extends StatefulWidget {
  const VerificacionIDWidget({Key? key}) : super(key: key);

  @override
  _VerificacionIDWidgetState createState() => _VerificacionIDWidgetState();
}

class _VerificacionIDWidgetState extends State<VerificacionIDWidget> {
  bool isMediaUploading1 = false;
  String uploadedFileUrl1 = '';

  bool mouseRegionHovered1 = false;
  String? dropDownDocumentosValue;
  TextEditingController? textFieldNacionalidadController;
  TextEditingController? textFieldNombreCompletoController;
  TextEditingController? textFieldNumeroIDController;
  TextEditingController? textFieldDireccionController;
  bool isMediaUploading2 = false;
  String uploadedFileUrl2 = '';

  bool mouseRegionHovered2 = false;
  bool isMediaUploading3 = false;
  String uploadedFileUrl3 = '';

  bool mouseRegionHovered3 = false;
  DatosVerificacionRecord? ewVerificacion;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textFieldDireccionController = TextEditingController();
    textFieldNacionalidadController = TextEditingController();
    textFieldNombreCompletoController = TextEditingController();
    textFieldNumeroIDController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textFieldDireccionController?.dispose();
    textFieldNacionalidadController?.dispose();
    textFieldNombreCompletoController?.dispose();
    textFieldNumeroIDController?.dispose();
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
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF000310),
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF000310),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: InkWell(
                          onTap: () async {
                            scaffoldKey.currentState!.openDrawer();
                          },
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                              child: Icon(
                                Icons.menu,
                                color: Colors.black,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      desktop: false,
                    ))
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'fdxrstzb' /* Ajustes */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                              ))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 0, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'vwofh9mx' /* Ajustes */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .title1
                                        .override(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                      child: Badge(
                        badgeContent: Text(
                          FFLocalizations.of(context).getText(
                            'llnr5frf' /* 1 */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                        showBadge: true,
                        shape: BadgeShape.circle,
                        badgeColor: Color(0xFFFF1C1C),
                        elevation: 5,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        position: BadgePosition.topEnd(),
                        animationType: BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Icon(
                            Icons.chat_bubble_rounded,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                      child: Badge(
                        badgeContent: Text(
                          FFLocalizations.of(context).getText(
                            'o5tjz7v6' /* 1 */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Source Sans Pro',
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                        showBadge: true,
                        shape: BadgeShape.circle,
                        badgeColor: Color(0xFFFF1C1C),
                        elevation: 5,
                        padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                        position: BadgePosition.topEnd(),
                        animationType: BadgeAnimationType.scale,
                        toAnimate: true,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                          child: Icon(
                            Icons.notifications,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(6, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary20,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFF00FFF5),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 5, 8, 5),
                                    child: Icon(
                                      Icons.account_balance_wallet_outlined,
                                      color: Color(0xFF00FFE0),
                                      size: 20,
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '8h2tl6sg' /* Wallet DNT */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF00FFF5),
                                            ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary20,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFF00FFF5),
                                  width: 1,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 5, 8, 5),
                                    child: Icon(
                                      Icons.add,
                                      color: Color(0xFF00FFE0),
                                      size: 20,
                                    ),
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 8, 0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          '6a2r0b1x' /* Crear Post */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Roboto',
                                              color: Color(0xFF00FFF5),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(6, 0, 12, 0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary20,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                AuthUserStreamWidget(
                                  builder: (context) => Container(
                                    width: 35,
                                    height: 35,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      currentUserPhoto,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                ))
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8, 0, 8, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            currentUserDisplayName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily:
                                                      'Roboto Condensed',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                ),
                                          ),
                                        ),
                                        AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            valueOrDefault(
                                                currentUserDocument?.nameUser,
                                                ''),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
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
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (!FFAppState()
                                          .VisibilidadConfiguraciones)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                          child: InkWell(
                                            onTap: () async {
                                              FFAppState().update(() {
                                                FFAppState()
                                                        .VisibilidadConfiguraciones =
                                                    true;
                                              });
                                            },
                                            child: Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Color(0xFF00FFF5),
                                              size: 24,
                                            ),
                                          ),
                                        ),
                                      if (FFAppState()
                                          .VisibilidadConfiguraciones)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5, 5, 5, 5),
                                          child: InkWell(
                                            onTap: () async {
                                              FFAppState().update(() {
                                                FFAppState()
                                                        .VisibilidadConfiguraciones =
                                                    false;
                                              });
                                            },
                                            child: Icon(
                                              Icons.keyboard_arrow_up,
                                              color: Color(0xFF00FFF5),
                                              size: 24,
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
                    ),
                  ],
                ),
              ),
            ),
            centerTitle: false,
            expandedTitleScale: 1.0,
            titlePadding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
          ),
          toolbarHeight: 100,
          elevation: 4,
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imageneshomednt/ini%2002.jpg',
              ).image,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Container(
                  width: 200,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: Color(0xFF000310),
                  ),
                  child: MenuIzquierdoWidget(),
                ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(),
                  child: DefaultTabController(
                    length: 1,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          labelColor:
                              FlutterFlowTheme.of(context).primaryBtnText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).lineColor,
                          labelStyle: FlutterFlowTheme.of(context).bodyText1,
                          indicatorColor: Color(0xFF00FFF5),
                          indicatorWeight: 1,
                          tabs: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 4, 0),
                                  child: Icon(
                                    Icons.dynamic_form_outlined,
                                    size: 20,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'pdvjbf00' /* Verificación de Identidad */,
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
                                    EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 12, 0, 20),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          if (!valueOrDefault<bool>(
                                              currentUserDocument
                                                  ?.envioVerificacin,
                                              false))
                                            AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 500,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Form(
                                                  key: formKey,
                                                  autovalidateMode:
                                                      AutovalidateMode.always,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 20),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      8, 12, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'kisegoxn' /* Verificación de Identidad de u... */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .title3
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      8, 12, 0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0x2700FFF5),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          2,
                                                                          6,
                                                                          2),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            textFieldNacionalidadController,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'bv2wu64t' /* Nacionalidad */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
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
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      8, 12, 0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0x2700FFF5),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          2,
                                                                          6,
                                                                          2),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            textFieldNombreCompletoController,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            'gty39kx9' /* Nombre completo */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
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
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      8, 0, 0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12,
                                                                          0,
                                                                          12,
                                                                          0),
                                                                  child:
                                                                      FlutterFlowDropDown<
                                                                          String>(
                                                                    initialOption:
                                                                        dropDownDocumentosValue ??=
                                                                            '',
                                                                    options: [
                                                                      'Carnet Identidad',
                                                                      'Pasaporte',
                                                                      'Licencia de Conducir'
                                                                    ],
                                                                    optionLabels: [
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '0uq09dbs' /* Carnet Identidad */,
                                                                      ),
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'mav7u3d4' /* Pasaporte */,
                                                                      ),
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'qy2n3i0s' /* Licencia de Conducir */,
                                                                      )
                                                                    ],
                                                                    onChanged: (val) =>
                                                                        setState(() =>
                                                                            dropDownDocumentosValue =
                                                                                val),
                                                                    width: 180,
                                                                    height: 50,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto Condensed',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).lineColor,
                                                                        ),
                                                                    hintText: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'fpdjizq6' /* Seleccione el tipo de document... */,
                                                                    ),
                                                                    icon: Icon(
                                                                      Icons
                                                                          .arrow_drop_down,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      size: 15,
                                                                    ),
                                                                    fillColor:
                                                                        Color(
                                                                            0xFF000923),
                                                                    elevation:
                                                                        0,
                                                                    borderColor:
                                                                        Color(
                                                                            0x2700FFF5),
                                                                    borderWidth:
                                                                        1,
                                                                    borderRadius:
                                                                        8,
                                                                    margin: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            4,
                                                                            12,
                                                                            4),
                                                                    hidesUnderline:
                                                                        true,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      8, 12, 0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0x2700FFF5),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          2,
                                                                          6,
                                                                          2),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            textFieldNumeroIDController,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          labelText:
                                                                              FFLocalizations.of(context).getText(
                                                                            '1zrvjb75' /* Número de documento */,
                                                                          ),
                                                                          labelStyle:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                          hintStyle:
                                                                              FlutterFlowTheme.of(context).bodyText1,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          errorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                          focusedErrorBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0x00000000),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                const BorderRadius.only(
                                                                              topLeft: Radius.circular(4.0),
                                                                              topRight: Radius.circular(4.0),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Roboto Condensed',
                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                            ),
                                                                        keyboardType:
                                                                            TextInputType.number,
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
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(12,
                                                                      8, 12, 0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0x2700FFF5),
                                                                width: 1,
                                                              ),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          2,
                                                                          6,
                                                                          2),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              4,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            3,
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              textFieldDireccionController,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            labelText:
                                                                                FFLocalizations.of(context).getText(
                                                                              'tfgm75tx' /* Dirección de residencia */,
                                                                            ),
                                                                            labelStyle:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                            hintStyle:
                                                                                FlutterFlowTheme.of(context).bodyText1,
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto Condensed',
                                                                                color: FlutterFlowTheme.of(context).lineColor,
                                                                              ),
                                                                          keyboardType:
                                                                              TextInputType.multiline,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
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
                                                                        12,
                                                                        8,
                                                                        12,
                                                                        0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2700FFF5),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            2,
                                                                            2),
                                                                child: Row(
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
                                                                              12,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          final selectedMedia =
                                                                              await selectMediaWithSourceBottomSheet(
                                                                            context:
                                                                                context,
                                                                            imageQuality:
                                                                                100,
                                                                            allowPhoto:
                                                                                true,
                                                                          );
                                                                          if (selectedMedia != null &&
                                                                              selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                            setState(() =>
                                                                                isMediaUploading1 = true);
                                                                            var downloadUrls =
                                                                                <String>[];
                                                                            try {
                                                                              downloadUrls = (await Future.wait(
                                                                                selectedMedia.map(
                                                                                  (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                ),
                                                                              ))
                                                                                  .where((u) => u != null)
                                                                                  .map((u) => u!)
                                                                                  .toList();
                                                                            } finally {
                                                                              isMediaUploading1 = false;
                                                                            }
                                                                            if (downloadUrls.length ==
                                                                                selectedMedia.length) {
                                                                              setState(() => uploadedFileUrl1 = downloadUrls.first);
                                                                            } else {
                                                                              setState(() {});
                                                                              return;
                                                                            }
                                                                          }
                                                                        },
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          'z7ne26yy' /* Subir foto frontal */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .camera_alt,
                                                                          color: mouseRegionHovered1!
                                                                              ? Color(0xFF00FFF5)
                                                                              : FlutterFlowTheme.of(context).lineColor,
                                                                          size:
                                                                              15,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              160,
                                                                          height:
                                                                              40,
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: mouseRegionHovered1! ? Color(0xFF00FFF5) : FlutterFlowTheme.of(context).lineColor,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          uploadedFileUrl1,
                                                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/pasa01.png',
                                                                        ),
                                                                        width:
                                                                            130,
                                                                        height:
                                                                            75,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        8,
                                                                        12,
                                                                        0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2700FFF5),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            2,
                                                                            2),
                                                                child: Row(
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
                                                                              12,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          final selectedMedia =
                                                                              await selectMediaWithSourceBottomSheet(
                                                                            context:
                                                                                context,
                                                                            imageQuality:
                                                                                80,
                                                                            allowPhoto:
                                                                                true,
                                                                          );
                                                                          if (selectedMedia != null &&
                                                                              selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                            setState(() =>
                                                                                isMediaUploading2 = true);
                                                                            var downloadUrls =
                                                                                <String>[];
                                                                            try {
                                                                              downloadUrls = (await Future.wait(
                                                                                selectedMedia.map(
                                                                                  (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                ),
                                                                              ))
                                                                                  .where((u) => u != null)
                                                                                  .map((u) => u!)
                                                                                  .toList();
                                                                            } finally {
                                                                              isMediaUploading2 = false;
                                                                            }
                                                                            if (downloadUrls.length ==
                                                                                selectedMedia.length) {
                                                                              setState(() => uploadedFileUrl2 = downloadUrls.first);
                                                                            } else {
                                                                              setState(() {});
                                                                              return;
                                                                            }
                                                                          }
                                                                        },
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          'owl1nboa' /* Subir foto reverso */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .camera_alt,
                                                                          color: mouseRegionHovered2!
                                                                              ? Color(0xFF00FFF5)
                                                                              : FlutterFlowTheme.of(context).lineColor,
                                                                          size:
                                                                              15,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              160,
                                                                          height:
                                                                              40,
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: mouseRegionHovered2! ? Color(0xFF00FFF5) : FlutterFlowTheme.of(context).lineColor,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          uploadedFileUrl2,
                                                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/pasa02.png',
                                                                        ),
                                                                        width:
                                                                            130,
                                                                        height:
                                                                            75,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                              MouseCursor.defer,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12,
                                                                        8,
                                                                        12,
                                                                        0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0x2700FFF5),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            2,
                                                                            2),
                                                                child: Row(
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
                                                                              12,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          FFButtonWidget(
                                                                        onPressed:
                                                                            () async {
                                                                          final selectedMedia =
                                                                              await selectMediaWithSourceBottomSheet(
                                                                            context:
                                                                                context,
                                                                            imageQuality:
                                                                                80,
                                                                            allowPhoto:
                                                                                true,
                                                                          );
                                                                          if (selectedMedia != null &&
                                                                              selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                            setState(() =>
                                                                                isMediaUploading3 = true);
                                                                            var downloadUrls =
                                                                                <String>[];
                                                                            try {
                                                                              downloadUrls = (await Future.wait(
                                                                                selectedMedia.map(
                                                                                  (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                ),
                                                                              ))
                                                                                  .where((u) => u != null)
                                                                                  .map((u) => u!)
                                                                                  .toList();
                                                                            } finally {
                                                                              isMediaUploading3 = false;
                                                                            }
                                                                            if (downloadUrls.length ==
                                                                                selectedMedia.length) {
                                                                              setState(() => uploadedFileUrl3 = downloadUrls.first);
                                                                            } else {
                                                                              setState(() {});
                                                                              return;
                                                                            }
                                                                          }
                                                                        },
                                                                        text: FFLocalizations.of(context)
                                                                            .getText(
                                                                          'kuelo7sy' /* Subir foto selfi */,
                                                                        ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .camera_alt,
                                                                          color: mouseRegionHovered3!
                                                                              ? Color(0xFF00FFF5)
                                                                              : FlutterFlowTheme.of(context).lineColor,
                                                                          size:
                                                                              15,
                                                                        ),
                                                                        options:
                                                                            FFButtonOptions(
                                                                          width:
                                                                              160,
                                                                          height:
                                                                              40,
                                                                          color:
                                                                              Color(0x00FFFFFF),
                                                                          textStyle: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Roboto',
                                                                                color: valueOrDefault<Color>(
                                                                                  mouseRegionHovered3! ? Color(0xFF00FFF5) : FlutterFlowTheme.of(context).lineColor,
                                                                                  FlutterFlowTheme.of(context).lineColor,
                                                                                ),
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                Colors.transparent,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              0),
                                                                      child: Image
                                                                          .network(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          uploadedFileUrl3,
                                                                          'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/selfi.svg',
                                                                        ),
                                                                        width:
                                                                            130,
                                                                        height:
                                                                            75,
                                                                        fit: BoxFit
                                                                            .cover,
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      12, 0, 0),
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
                                                                            12,
                                                                            12,
                                                                            12,
                                                                            12),
                                                                child:
                                                                    FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    final datosVerificacionCreateData =
                                                                        createDatosVerificacionRecordData(
                                                                      idUser:
                                                                          currentUserReference,
                                                                      nacionalidad:
                                                                          textFieldNacionalidadController!
                                                                              .text,
                                                                      numeroID:
                                                                          int.tryParse(
                                                                              textFieldNumeroIDController!.text),
                                                                      tipoDocumento:
                                                                          dropDownDocumentosValue,
                                                                      direccion:
                                                                          textFieldDireccionController!
                                                                              .text,
                                                                      fotoFrontal:
                                                                          uploadedFileUrl1,
                                                                      fotoReverso:
                                                                          uploadedFileUrl2,
                                                                      fotoSelfi:
                                                                          uploadedFileUrl3,
                                                                      fechaEnviado:
                                                                          getCurrentTimestamp,
                                                                      nombreCompleto:
                                                                          textFieldNombreCompletoController!
                                                                              .text,
                                                                      estadoFotoReverso:
                                                                          false,
                                                                      estadoFotoSelfi:
                                                                          false,
                                                                      estadoFotoFrontal:
                                                                          false,
                                                                    );
                                                                    var datosVerificacionRecordReference =
                                                                        DatosVerificacionRecord
                                                                            .collection
                                                                            .doc();
                                                                    await datosVerificacionRecordReference
                                                                        .set(
                                                                            datosVerificacionCreateData);
                                                                    ewVerificacion =
                                                                        DatosVerificacionRecord.getDocumentFromData(
                                                                            datosVerificacionCreateData,
                                                                            datosVerificacionRecordReference);

                                                                    final datosVerificacionUpdateData =
                                                                        createDatosVerificacionRecordData(
                                                                      nuevas:
                                                                          true,
                                                                    );
                                                                    await ewVerificacion!
                                                                        .reference
                                                                        .update(
                                                                            datosVerificacionUpdateData);

                                                                    final usersUpdateData =
                                                                        createUsersRecordData(
                                                                      envioVerificacin:
                                                                          true,
                                                                    );
                                                                    await currentUserReference!
                                                                        .update(
                                                                            usersUpdateData);
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .showSnackBar(
                                                                      SnackBar(
                                                                        content:
                                                                            Text(
                                                                          'Sus documentos fueron enviados con éxito...',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                          ),
                                                                        ),
                                                                        duration:
                                                                            Duration(milliseconds: 3000),
                                                                        backgroundColor:
                                                                            Color(0xFF000923),
                                                                      ),
                                                                    );

                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  text: FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'qoi2tbt6' /* Enviar Documentos */,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: 230,
                                                                    height: 50,
                                                                    color: Color(
                                                                        0xFF000923),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                    elevation:
                                                                        8,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: Color(
                                                                          0xFF00FFF5),
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(8),
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
                                            ),
                                          if (valueOrDefault<bool>(
                                              currentUserDocument
                                                  ?.envioVerificacin,
                                              false))
                                            AuthUserStreamWidget(
                                              builder: (context) => Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 500,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 20),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 8,
                                                                    12, 8),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'uotx4uym' /* Verificación de Identidad de u... */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(12, 0,
                                                                    12, 20),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1, 0.95),
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: Color(
                                                                    0xFF000923),
                                                                elevation: 10,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              100),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          1,
                                                                          1,
                                                                          1,
                                                                          1),
                                                                  child: Icon(
                                                                    Icons
                                                                        .verified_user,
                                                                    color: valueOrDefault<bool>(
                                                                            currentUserDocument
                                                                                ?.isComerciante,
                                                                            false)
                                                                        ? Color(
                                                                            0xB400FF53)
                                                                        : Color(
                                                                            0xFFDA8D00),
                                                                    size: 15,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  valueOrDefault<
                                                                              bool>(
                                                                          currentUserDocument
                                                                              ?.isComerciante,
                                                                          false)
                                                                      ? 'Documentos Verificados'
                                                                      : 'Documentos en Verificación',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: valueOrDefault<bool>(currentUserDocument?.isComerciante,
                                                                                false)
                                                                            ? Color(0xB400FF53)
                                                                            : Color(0xFFDA8D00),
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
    );
  }
}
