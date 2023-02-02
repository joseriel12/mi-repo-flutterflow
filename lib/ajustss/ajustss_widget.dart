import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/disclai_mer_widget.dart';
import '../components/menu_izquierdo_widget.dart';
import '../components/menu_seting_widget.dart';
import '../components/menu_superior_widget.dart';
import '../components/noticias_derecha_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AjustssWidget extends StatefulWidget {
  const AjustssWidget({Key? key}) : super(key: key);

  @override
  _AjustssWidgetState createState() => _AjustssWidgetState();
}

class _AjustssWidgetState extends State<AjustssWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  bool mouseRegionHovered = false;
  TextEditingController? textFieldEmailController;
  TextEditingController? textFieldNombreController;
  TextEditingController? textFieldUsuarioController;
  String? dropDownValue;
  TextEditingController? textFieldWhatsAppController;
  TextEditingController? passwor01Controller;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwor01Controller = TextEditingController();
    textFieldEmailController = TextEditingController(text: currentUserEmail);
    textFieldNombreController =
        TextEditingController(text: currentUserDisplayName);
    textFieldUsuarioController = TextEditingController(
        text: valueOrDefault(currentUserDocument?.nameUser, ''));
    textFieldWhatsAppController =
        TextEditingController(text: currentPhoneNumber);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    passwor01Controller?.dispose();
    textFieldEmailController?.dispose();
    textFieldNombreController?.dispose();
    textFieldUsuarioController?.dispose();
    textFieldWhatsAppController?.dispose();
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                  '4jy4m0px' /* AJUSTES DE CUENTA DE USUARIO */,
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
                                                    't8uwcvfb' /* Edita y personaliza tu app. */,
                                                  ),
                                                  maxLines: 3,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: DefaultTabController(
                                            length: 2,
                                            initialIndex: 0,
                                            child: Column(
                                              children: [
                                                TabBar(
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
                                                                  .fromSTEB(4,
                                                                      0, 4, 0),
                                                          child: Icon(
                                                            Icons.settings,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'e6x1crl2' /* Ajustes de Perfil */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(4,
                                                                      0, 4, 0),
                                                          child: Icon(
                                                            Icons.security,
                                                            size: 20,
                                                          ),
                                                        ),
                                                        Tab(
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'd6e17cl2' /* Ajustes de Seguridad */,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Expanded(
                                                  child: TabBarView(
                                                    children: [
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 0),
                                                          child: InkWell(
                                                            onTap: () async {
                                                              FFAppState()
                                                                  .update(() {
                                                                FFAppState()
                                                                        .VisibilidadLenguage =
                                                                    false;
                                                              });
                                                            },
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0, 0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            1,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
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
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            12,
                                                                            0,
                                                                            20),
                                                                        child:
                                                                            SingleChildScrollView(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Container(
                                                                                constraints: BoxConstraints(
                                                                                  maxWidth: 500,
                                                                                ),
                                                                                decoration: BoxDecoration(
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).secondary20,
                                                                                  ),
                                                                                ),
                                                                                child: Form(
                                                                                  key: formKey,
                                                                                  autovalidateMode: AutovalidateMode.always,
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'rjruuntc' /* Editar perfil de usuario */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                                      fontFamily: 'Roboto',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                          child: MouseRegion(
                                                                                            opaque: false,
                                                                                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                                                                                              child: Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  borderRadius: BorderRadius.circular(8),
                                                                                                  border: Border.all(
                                                                                                    color: Color(0x2700FFF5),
                                                                                                  ),
                                                                                                ),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                                                                                      child: FFButtonWidget(
                                                                                                        onPressed: () async {
                                                                                                          final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                                            context: context,
                                                                                                            imageQuality: 100,
                                                                                                            allowPhoto: true,
                                                                                                          );
                                                                                                          if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                                            setState(() => isMediaUploading = true);
                                                                                                            var downloadUrls = <String>[];
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
                                                                                                              isMediaUploading = false;
                                                                                                            }
                                                                                                            if (downloadUrls.length == selectedMedia.length) {
                                                                                                              setState(() => uploadedFileUrl = downloadUrls.first);
                                                                                                            } else {
                                                                                                              setState(() {});
                                                                                                              return;
                                                                                                            }
                                                                                                          }

                                                                                                          final usersUpdateData = createUsersRecordData(
                                                                                                            photoUrl: uploadedFileUrl,
                                                                                                          );
                                                                                                          await currentUserReference!.update(usersUpdateData);
                                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                                            SnackBar(
                                                                                                              content: Text(
                                                                                                                'foto de perfil actualizado correctamente',
                                                                                                                style: TextStyle(
                                                                                                                  color: Color(0xFF00300F),
                                                                                                                ),
                                                                                                              ),
                                                                                                              duration: Duration(milliseconds: 2500),
                                                                                                              backgroundColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                            ),
                                                                                                          );
                                                                                                        },
                                                                                                        text: FFLocalizations.of(context).getText(
                                                                                                          'gcszrfez' /* Subir foto perfil */,
                                                                                                        ),
                                                                                                        icon: Icon(
                                                                                                          Icons.camera_alt,
                                                                                                          color: mouseRegionHovered! ? Color(0xFF00FFF5) : FlutterFlowTheme.of(context).lineColor,
                                                                                                          size: 15,
                                                                                                        ),
                                                                                                        options: FFButtonOptions(
                                                                                                          color: Color(0x00FFFFFF),
                                                                                                          textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto',
                                                                                                                color: mouseRegionHovered! ? Color(0xFF00FFF5) : FlutterFlowTheme.of(context).lineColor,
                                                                                                                fontWeight: FontWeight.w500,
                                                                                                              ),
                                                                                                          borderRadius: BorderRadius.circular(10),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    AuthUserStreamWidget(
                                                                                                      builder: (context) => ClipRRect(
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(0),
                                                                                                          bottomRight: Radius.circular(8),
                                                                                                          topLeft: Radius.circular(0),
                                                                                                          topRight: Radius.circular(8),
                                                                                                        ),
                                                                                                        child: Image.network(
                                                                                                          valueOrDefault<String>(
                                                                                                            uploadedFileUrl != null && uploadedFileUrl != '' ? uploadedFileUrl : currentUserPhoto,
                                                                                                            'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                          ),
                                                                                                          width: 130,
                                                                                                          height: 130,
                                                                                                          fit: BoxFit.cover,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            onEnter: ((event) async {
                                                                                              setState(() => mouseRegionHovered = true);
                                                                                            }),
                                                                                            onExit: ((event) async {
                                                                                              setState(() => mouseRegionHovered = false);
                                                                                            }),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                                  child: AuthUserStreamWidget(
                                                                                                    builder: (context) => TextFormField(
                                                                                                      controller: textFieldNombreController,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                                          '8z4yltos' /* Tu Nombre */,
                                                                                                        ),
                                                                                                        labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto',
                                                                                                              fontSize: 12,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                        enabledBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x2700FFF5),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x2700FFF5),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        errorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x00000000),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x00000000),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        filled: true,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Roboto',
                                                                                                            fontSize: 12,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                      maxLines: null,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                                  child: TextFormField(
                                                                                                    controller: textFieldEmailController,
                                                                                                    readOnly: true,
                                                                                                    obscureText: false,
                                                                                                    decoration: InputDecoration(
                                                                                                      labelText: FFLocalizations.of(context).getText(
                                                                                                        'n6rp13p2' /* Tu Email */,
                                                                                                      ),
                                                                                                      labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Roboto',
                                                                                                            fontSize: 12,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                      enabledBorder: OutlineInputBorder(
                                                                                                        borderSide: BorderSide(
                                                                                                          color: Color(0x2700FFF5),
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      focusedBorder: OutlineInputBorder(
                                                                                                        borderSide: BorderSide(
                                                                                                          color: Color(0x2700FFF5),
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      errorBorder: OutlineInputBorder(
                                                                                                        borderSide: BorderSide(
                                                                                                          color: Color(0x00000000),
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      focusedErrorBorder: OutlineInputBorder(
                                                                                                        borderSide: BorderSide(
                                                                                                          color: Color(0x00000000),
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      filled: true,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Roboto',
                                                                                                          fontSize: 12,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                        ),
                                                                                                    maxLines: null,
                                                                                                    keyboardType: TextInputType.emailAddress,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                                  child: AuthUserStreamWidget(
                                                                                                    builder: (context) => TextFormField(
                                                                                                      controller: textFieldUsuarioController,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                                          'x6q67zw8' /* Nombre de Usuario */,
                                                                                                        ),
                                                                                                        labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto',
                                                                                                              fontSize: 12,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                        enabledBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x2700FFF5),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x2700FFF5),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        errorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x00000000),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x00000000),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Roboto',
                                                                                                            fontSize: 12,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                      maxLines: null,
                                                                                                      keyboardType: TextInputType.name,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                child: AuthUserStreamWidget(
                                                                                                  builder: (context) => StreamBuilder<List<CodPaisesRecord>>(
                                                                                                    stream: queryCodPaisesRecord(),
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
                                                                                                      List<CodPaisesRecord> dropDownCodPaisesRecordList = snapshot.data!;
                                                                                                      return FlutterFlowDropDown<String>(
                                                                                                        initialOption: dropDownValue ??= valueOrDefault(currentUserDocument?.paisPrefijo, ''),
                                                                                                        options: dropDownCodPaisesRecordList.map((e) => e.cod.toString()).toList().toList(),
                                                                                                        optionLabels: dropDownCodPaisesRecordList.map((e) => e.nombre).withoutNulls.toList().toList(),
                                                                                                        onChanged: (val) => setState(() => dropDownValue = val),
                                                                                                        width: 180,
                                                                                                        height: 50,
                                                                                                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).lineColor,
                                                                                                            ),
                                                                                                        hintText: FFLocalizations.of(context).getText(
                                                                                                          'grsayrtu' /* Código País */,
                                                                                                        ),
                                                                                                        icon: Icon(
                                                                                                          Icons.arrow_drop_down,
                                                                                                          color: FlutterFlowTheme.of(context).lineColor,
                                                                                                          size: 15,
                                                                                                        ),
                                                                                                        fillColor: Color(0xFF000923),
                                                                                                        elevation: 0,
                                                                                                        borderColor: Color(0x2700FFF5),
                                                                                                        borderWidth: 1,
                                                                                                        borderRadius: 8,
                                                                                                        margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                                                                                                        hidesUnderline: true,
                                                                                                      );
                                                                                                    },
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Expanded(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                                  child: AuthUserStreamWidget(
                                                                                                    builder: (context) => TextFormField(
                                                                                                      controller: textFieldWhatsAppController,
                                                                                                      obscureText: false,
                                                                                                      decoration: InputDecoration(
                                                                                                        labelText: FFLocalizations.of(context).getText(
                                                                                                          '43h2cnra' /* Número WhatsApp */,
                                                                                                        ),
                                                                                                        labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto',
                                                                                                              fontSize: 12,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                            ),
                                                                                                        enabledBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x2700FFF5),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        focusedBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x2700FFF5),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        errorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x00000000),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        focusedErrorBorder: OutlineInputBorder(
                                                                                                          borderSide: BorderSide(
                                                                                                            color: Color(0x00000000),
                                                                                                            width: 1,
                                                                                                          ),
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        filled: true,
                                                                                                      ),
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Roboto',
                                                                                                            fontSize: 12,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                      maxLines: null,
                                                                                                      keyboardType: TextInputType.phone,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                          child: FFButtonWidget(
                                                                                            onPressed: () async {
                                                                                              if (formKey.currentState == null || !formKey.currentState!.validate()) {
                                                                                                return;
                                                                                              }

                                                                                              final usersUpdateData = createUsersRecordData(
                                                                                                displayName: textFieldNombreController!.text != null && textFieldNombreController!.text != '' ? textFieldNombreController!.text : currentUserDisplayName,
                                                                                                paisPrefijo: dropDownValue != null && dropDownValue != '' ? dropDownValue : valueOrDefault(currentUserDocument?.paisPrefijo, ''),
                                                                                                phoneNumber: textFieldWhatsAppController!.text != null && textFieldWhatsAppController!.text != '' ? textFieldWhatsAppController!.text : currentPhoneNumber,
                                                                                                numeroWhatsApp: '${dropDownValue != null && dropDownValue != '' ? dropDownValue : valueOrDefault(currentUserDocument?.paisPrefijo, '')}${textFieldWhatsAppController!.text != null && textFieldWhatsAppController!.text != '' ? textFieldWhatsAppController!.text : currentPhoneNumber}',
                                                                                                nameUser: textFieldUsuarioController!.text != null && textFieldUsuarioController!.text != '' ? textFieldUsuarioController!.text : valueOrDefault(currentUserDocument?.nameUser, ''),
                                                                                              );
                                                                                              await currentUserReference!.update(usersUpdateData);
                                                                                              ScaffoldMessenger.of(context).showSnackBar(
                                                                                                SnackBar(
                                                                                                  content: Text(
                                                                                                    'Datos actualizados corectamente',
                                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                                          fontFamily: 'Roboto',
                                                                                                          color: Color(0xFF000923),
                                                                                                          lineHeight: 2,
                                                                                                        ),
                                                                                                  ),
                                                                                                  duration: Duration(milliseconds: 4000),
                                                                                                  backgroundColor: Color(0x2800FF53),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                            text: FFLocalizations.of(context).getText(
                                                                                              'r5b1929r' /* Editar Perfil */,
                                                                                            ),
                                                                                            options: FFButtonOptions(
                                                                                              width: 230,
                                                                                              height: 50,
                                                                                              color: Color(0xFF000923),
                                                                                              textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                                    fontFamily: 'Roboto',
                                                                                                    color: Colors.white,
                                                                                                    fontSize: 14,
                                                                                                    fontWeight: FontWeight.normal,
                                                                                                  ),
                                                                                              elevation: 8,
                                                                                              borderSide: BorderSide(
                                                                                                color: Color(0xFF00FFF5),
                                                                                                width: 1,
                                                                                              ),
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(12, 20, 12, 0),
                                                                                child: Material(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 10,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: Container(
                                                                                    constraints: BoxConstraints(
                                                                                      maxWidth: 500,
                                                                                    ),
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(8),
                                                                                      border: Border.all(
                                                                                        color: Color(0x2700FFF5),
                                                                                        width: 1,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12, 2, 12, 2),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                            child: Icon(
                                                                                              Icons.language,
                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              size: 20,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Ajustar idioma:  ${FFLocalizations.of(context).languageCode}',
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              if (FFAppState().VisibilidadLenguage)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      FFAppState().update(() {
                                                                                                        FFAppState().VisibilidadLenguage = false;
                                                                                                      });
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.keyboard_arrow_up,
                                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              if (!FFAppState().VisibilidadLenguage)
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      FFAppState().update(() {
                                                                                                        FFAppState().VisibilidadLenguage = true;
                                                                                                      });
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.keyboard_arrow_down,
                                                                                                      color: FlutterFlowTheme.of(context).lineColor,
                                                                                                      size: 24,
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
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(12, 20, 12, 0),
                                                                                child: Material(
                                                                                  color: Colors.transparent,
                                                                                  elevation: 10,
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  child: Container(
                                                                                    constraints: BoxConstraints(
                                                                                      maxWidth: 500,
                                                                                    ),
                                                                                    decoration: BoxDecoration(
                                                                                      borderRadius: BorderRadius.circular(8),
                                                                                      border: Border.all(
                                                                                        color: Color(0x2700FFF5),
                                                                                        width: 1,
                                                                                      ),
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12, 2, 12, 2),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                            child: Icon(
                                                                                              Icons.privacy_tip_outlined,
                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              size: 20,
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'mik5iz45' /* Mostrar Disclaimer */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                                                child: InkWell(
                                                                                                  onTap: () async {
                                                                                                    await showModalBottomSheet(
                                                                                                      isScrollControlled: true,
                                                                                                      backgroundColor: Colors.transparent,
                                                                                                      barrierColor: Colors.transparent,
                                                                                                      enableDrag: false,
                                                                                                      context: context,
                                                                                                      builder: (context) {
                                                                                                        return Padding(
                                                                                                          padding: MediaQuery.of(context).viewInsets,
                                                                                                          child: DisclaiMerWidget(),
                                                                                                        );
                                                                                                      },
                                                                                                    ).then((value) => setState(() {}));
                                                                                                  },
                                                                                                  child: Icon(
                                                                                                    Icons.keyboard_arrow_down,
                                                                                                    color: FlutterFlowTheme.of(context).lineColor,
                                                                                                    size: 24,
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
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (FFAppState()
                                                                    .VisibilidadLenguage)
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.75,
                                                                            0.9),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          200,
                                                                      height:
                                                                          35,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFF000923),
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              setAppLanguage(context, 'es');
                                                                              FFAppState().update(() {
                                                                                FFAppState().VisibilidadLenguage = false;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 100,
                                                                              height: 35,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(8),
                                                                                  bottomRight: Radius.circular(0),
                                                                                  topLeft: Radius.circular(8),
                                                                                  topRight: Radius.circular(0),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 6, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                      child: Icon(
                                                                                        Icons.arrow_right,
                                                                                        color: Colors.black,
                                                                                        size: 24,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'ptekb9s0' /* Español */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: Color(0xFF000923),
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              setAppLanguage(context, 'en');
                                                                              FFAppState().update(() {
                                                                                FFAppState().VisibilidadLenguage = false;
                                                                              });
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 100,
                                                                              height: 35,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                borderRadius: BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0),
                                                                                  bottomRight: Radius.circular(8),
                                                                                  topLeft: Radius.circular(0),
                                                                                  topRight: Radius.circular(8),
                                                                                ),
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(6, 0, 6, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                      child: Icon(
                                                                                        Icons.arrow_right,
                                                                                        color: Colors.black,
                                                                                        size: 24,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '7r5ul721' /* Inglés */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Roboto Condensed',
                                                                                            color: Color(0xFF000923),
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
                                                        ),
                                                      ),
                                                      KeepAliveWidgetWrapper(
                                                        builder: (context) =>
                                                            Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      12, 0, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth: 500,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary20,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          10,
                                                                          10,
                                                                          10),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            8,
                                                                            12,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Text(
                                                                                FFLocalizations.of(context).getText(
                                                                                  'b5ree65x' /* Restablece tu  password median... */,
                                                                                ),
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).title3.override(
                                                                                      fontFamily: 'Roboto',
                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            8,
                                                                            12,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Expanded(
                                                                              child: TextFormField(
                                                                                controller: passwor01Controller,
                                                                                readOnly: true,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  labelText: FFLocalizations.of(context).getText(
                                                                                    'nvqm9xfa' /* Tu Email */,
                                                                                  ),
                                                                                  labelStyle: FlutterFlowTheme.of(context).bodyText1,
                                                                                  enabledBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x2700FFF5),
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  focusedBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x2700FFF5),
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  errorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  focusedErrorBorder: OutlineInputBorder(
                                                                                    borderSide: BorderSide(
                                                                                      color: Color(0x00000000),
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                  ),
                                                                                  filled: true,
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).bodyText1,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            12,
                                                                            12,
                                                                            12,
                                                                            12),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () {
                                                                            print('Button_Secondary pressed ...');
                                                                          },
                                                                          text:
                                                                              FFLocalizations.of(context).getText(
                                                                            '1h50cjxj' /* Enviar Enlace */,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                230,
                                                                            height:
                                                                                50,
                                                                            color:
                                                                                Color(0xFF000923),
                                                                            textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                  fontFamily: 'Roboto',
                                                                                  color: Colors.white,
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                            elevation:
                                                                                8,
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Color(0xFF00FFF5),
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            8,
                                                                            0,
                                                                            0),
                                                                child:
                                                                    Container(
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        500,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary20,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            12,
                                                                            12,
                                                                            12),
                                                                    child:
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
                                                                              12,
                                                                              8,
                                                                              12,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'lqj2f8tj' /* Verificación  Biométrica */,
                                                                                  ),
                                                                                  maxLines: 2,
                                                                                  style: FlutterFlowTheme.of(context).title3.override(
                                                                                        fontFamily: 'Roboto',
                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12,
                                                                              12,
                                                                              12,
                                                                              12),
                                                                          child:
                                                                              FFButtonWidget(
                                                                            onPressed:
                                                                                () {
                                                                              print('Button_Secondary pressed ...');
                                                                            },
                                                                            text:
                                                                                FFLocalizations.of(context).getText(
                                                                              'pdtvt5ax' /* Activar */,
                                                                            ),
                                                                            options:
                                                                                FFButtonOptions(
                                                                              width: 230,
                                                                              height: 50,
                                                                              color: Color(0xFF000923),
                                                                              textStyle: FlutterFlowTheme.of(context).bodyText2.override(
                                                                                    fontFamily: 'Roboto',
                                                                                    color: Colors.white,
                                                                                    fontSize: 14,
                                                                                    fontWeight: FontWeight.normal,
                                                                                  ),
                                                                              elevation: 8,
                                                                              borderSide: BorderSide(
                                                                                color: Color(0xFF00FFF5),
                                                                                width: 1,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8),
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
