import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/menu_izquierdo_widget.dart';
import '../components/menu_seting_widget.dart';
import '../components/menu_superior_widget.dart';
import '../components/noticias_derecha_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ConstructorFunnelsWidget extends StatefulWidget {
  const ConstructorFunnelsWidget({Key? key}) : super(key: key);

  @override
  _ConstructorFunnelsWidgetState createState() =>
      _ConstructorFunnelsWidgetState();
}

class _ConstructorFunnelsWidgetState extends State<ConstructorFunnelsWidget> {
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
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GradientText(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4hs9rk56' /* CONSTRUCTOR DE FUNNELS */,
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
                                                    ],
                                                  ),
                                                  Divider(
                                                    thickness: 1,
                                                    color: Color(0xFF00FFD8),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 4, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'suhqob85' /* Visualiza y aterriza los negoc... */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 2,
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
                                                  .fromSTEB(0, 8, 0, 0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          12,
                                                                          8),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'qd64rshf' /* MIS FUNNELS */,
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
                                                                  StreamBuilder<
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
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: List.generate(
                                                                            rowEmpresasRecordList.length,
                                                                            (rowIndex) {
                                                                          final rowEmpresasRecord =
                                                                              rowEmpresasRecordList[rowIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                FFAppState().update(() {
                                                                                  FFAppState().EmpresaID = rowEmpresasRecord.reference;
                                                                                });
                                                                              },
                                                                              child: Material(
                                                                                color: Colors.transparent,
                                                                                elevation: 4,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(8),
                                                                                ),
                                                                                child: Container(
                                                                                  height: 30,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondary20,
                                                                                    borderRadius: BorderRadius.circular(8),
                                                                                    border: Border.all(
                                                                                      color: Color(0xFF0C53FE),
                                                                                    ),
                                                                                  ),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(6, 2, 6, 2),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                      children: [
                                                                                        Text(
                                                                                          rowEmpresasRecord.nombre!,
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                fontSize: 10,
                                                                                                fontWeight: FontWeight.normal,
                                                                                              ),
                                                                                        ),
                                                                                        Icon(
                                                                                          Icons.filter_alt,
                                                                                          color: Color(0xFF00FFD8),
                                                                                          size: 18,
                                                                                        ),
                                                                                      ],
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
                                                                ],
                                                              ),
                                                            ),
                                                            StreamBuilder<
                                                                List<
                                                                    PipRecord>>(
                                                              stream:
                                                                  queryPipRecord(
                                                                queryBuilder: (pipRecord) => pipRecord
                                                                    .where(
                                                                        'id_User',
                                                                        isEqualTo:
                                                                            currentUserReference)
                                                                    .where(
                                                                        'ID_Empresa',
                                                                        isEqualTo:
                                                                            FFAppState()
                                                                                .EmpresaID)
                                                                    .orderBy(
                                                                        'Fecha_Registro',
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
                                                                List<PipRecord>
                                                                    listViewPipRecordList =
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
                                                                      listViewPipRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          listViewIndex) {
                                                                    final listViewPipRecord =
                                                                        listViewPipRecordList[
                                                                            listViewIndex];
                                                                    return Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.65,
                                                                              0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            0,
                                                                            1),
                                                                        child: StreamBuilder<
                                                                            EmpresasRecord>(
                                                                          stream:
                                                                              EmpresasRecord.getDocument(listViewPipRecord.iDEmpresa!),
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
                                                                            final containerEmpresasRecord =
                                                                                snapshot.data!;
                                                                            return Container(
                                                                              height: 55,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondary20,
                                                                              ),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(12, 2, 12, 2),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                child: Container(
                                                                                                  width: 35,
                                                                                                  height: 35,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                containerEmpresasRecord.nombre!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                          SizedBox(
                                                                                            height: 20,
                                                                                            child: VerticalDivider(
                                                                                              thickness: 1,
                                                                                              indent: 1,
                                                                                              color: Color(0xFF00FFD8),
                                                                                            ),
                                                                                          ),
                                                                                          Expanded(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  if (listViewPipRecord.estado ?? true)
                                                                                                    Text(
                                                                                                      listViewPipRecord.titulo!,
                                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                            fontFamily: 'Roboto Condensed',
                                                                                                            color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                          ),
                                                                                                    ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      if (!listViewPipRecord.estado!)
                                                                                                        Text(
                                                                                                          FFLocalizations.of(context).getText(
                                                                                                            'tmn4rlvo' /* Tu funnel esta a la espera de ... */,
                                                                                                          ),
                                                                                                          maxLines: 2,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                fontSize: 8,
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
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                if (listViewPipRecord.estado!) {
                                                                                                  await Clipboard.setData(ClipboardData(text: listViewPipRecord.linkFunnel!));
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        'Enlace Copiado',
                                                                                                        style: FlutterFlowTheme.of(context).title3.override(
                                                                                                              fontFamily: 'Roboto',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                      ),
                                                                                                      duration: Duration(milliseconds: 2000),
                                                                                                      backgroundColor: Color(0xFF06013B),
                                                                                                    ),
                                                                                                  );
                                                                                                  return;
                                                                                                } else {
                                                                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                                                                    SnackBar(
                                                                                                      content: Text(
                                                                                                        'Tu Funnel No Esta Aprobadio',
                                                                                                        style: FlutterFlowTheme.of(context).title3.override(
                                                                                                              fontFamily: 'Roboto',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                      ),
                                                                                                      duration: Duration(milliseconds: 2000),
                                                                                                      backgroundColor: Color(0xFF06013B),
                                                                                                    ),
                                                                                                  );
                                                                                                  return;
                                                                                                }
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.content_copy,
                                                                                                color: Color(0xFF00FFE0),
                                                                                                size: 24,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                            child: InkWell(
                                                                                              onTap: () async {
                                                                                                context.pushNamed(
                                                                                                  'EditarFunnel',
                                                                                                  queryParams: {
                                                                                                    'idfunnel': serializeParam(
                                                                                                      listViewPipRecord.reference,
                                                                                                      ParamType.DocumentReference,
                                                                                                    ),
                                                                                                  }.withoutNulls,
                                                                                                );
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.edit_outlined,
                                                                                                color: Color(0xFF00FFE0),
                                                                                                size: 24,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          if (listViewPipRecord.estado ?? true)
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                              child: InkWell(
                                                                                                onTap: () async {
                                                                                                  if (listViewPipRecord.isPermanente == true) {
                                                                                                    context.pushNamed(
                                                                                                      'Funnnel',
                                                                                                      queryParams: {
                                                                                                        'user': serializeParam(
                                                                                                          listViewPipRecord.direcionURL,
                                                                                                          ParamType.String,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                      extra: <String, dynamic>{
                                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                                          hasTransition: true,
                                                                                                          transitionType: PageTransitionType.bottomToTop,
                                                                                                          duration: Duration(milliseconds: 200),
                                                                                                        ),
                                                                                                      },
                                                                                                    );

                                                                                                    return;
                                                                                                  } else {
                                                                                                    context.pushNamed(
                                                                                                      'FunnnelGeneral',
                                                                                                      queryParams: {
                                                                                                        'user': serializeParam(
                                                                                                          listViewPipRecord.direcionURL,
                                                                                                          ParamType.String,
                                                                                                        ),
                                                                                                      }.withoutNulls,
                                                                                                      extra: <String, dynamic>{
                                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                                          hasTransition: true,
                                                                                                          transitionType: PageTransitionType.bottomToTop,
                                                                                                          duration: Duration(milliseconds: 200),
                                                                                                        ),
                                                                                                      },
                                                                                                    );

                                                                                                    return;
                                                                                                  }
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.remove_red_eye,
                                                                                                  color: Color(0xFF00FFE0),
                                                                                                  size: 24,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (listViewPipRecord.estado ?? true)
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                              child: InkWell(
                                                                                                onTap: () async {
                                                                                                  context.pushNamed(
                                                                                                    'EditarFunnel',
                                                                                                    queryParams: {
                                                                                                      'idfunnel': serializeParam(
                                                                                                        listViewPipRecord.reference,
                                                                                                        ParamType.DocumentReference,
                                                                                                      ),
                                                                                                    }.withoutNulls,
                                                                                                    extra: <String, dynamic>{
                                                                                                      kTransitionInfoKey: TransitionInfo(
                                                                                                        hasTransition: true,
                                                                                                        transitionType: PageTransitionType.bottomToTop,
                                                                                                        duration: Duration(milliseconds: 200),
                                                                                                      ),
                                                                                                    },
                                                                                                  );
                                                                                                },
                                                                                                child: Badge(
                                                                                                  badgeContent: Text(
                                                                                                    listViewPipRecord.numeroPrspectos!.toString(),
                                                                                                    textAlign: TextAlign.center,
                                                                                                    style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                          fontFamily: 'Source Sans Pro',
                                                                                                          color: Colors.white,
                                                                                                          fontSize: 8,
                                                                                                          fontWeight: FontWeight.w300,
                                                                                                        ),
                                                                                                  ),
                                                                                                  showBadge: true,
                                                                                                  shape: BadgeShape.circle,
                                                                                                  badgeColor: Color(0xFFFF1C1C),
                                                                                                  elevation: 0,
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 6, 6),
                                                                                                  position: BadgePosition.topEnd(),
                                                                                                  animationType: BadgeAnimationType.scale,
                                                                                                  toAnimate: true,
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                                                                                                    child: Icon(
                                                                                                      Icons.people_rounded,
                                                                                                      color: Color(0xFF00FFE0),
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          if (listViewPipRecord.estado ?? true)
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                              child: InkWell(
                                                                                                onTap: () async {
                                                                                                  if (listViewPipRecord.isPermanente == false) {
                                                                                                    await listViewPipRecord.reference.delete();

                                                                                                    final pipUpdateData = {
                                                                                                      'numero_funnels': FieldValue.increment(-(1)),
                                                                                                    };
                                                                                                    await listViewPipRecord.reference.update(pipUpdateData);
                                                                                                    return;
                                                                                                  } else {
                                                                                                    await showDialog(
                                                                                                      context: context,
                                                                                                      builder: (alertDialogContext) {
                                                                                                        return AlertDialog(
                                                                                                          title: Text('DENEGADO'),
                                                                                                          content: Text('Este funnel es permanente, no se puede eliminar.'),
                                                                                                          actions: [
                                                                                                            TextButton(
                                                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                              child: Text('Aceptar'),
                                                                                                            ),
                                                                                                          ],
                                                                                                        );
                                                                                                      },
                                                                                                    );
                                                                                                    return;
                                                                                                  }
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.delete_rounded,
                                                                                                  color: Color(0xFFFF1616),
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
                                                                            );
                                                                          },
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
                                                    ),
                                                    StreamBuilder<
                                                        List<PipRecord>>(
                                                      stream: queryPipRecord(
                                                        queryBuilder: (pipRecord) => pipRecord
                                                            .where('ID_Empresa',
                                                                isEqualTo:
                                                                    FFAppState()
                                                                        .EmpresaID)
                                                            .where('id_User',
                                                                isEqualTo:
                                                                    currentUserReference),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
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
                                                        List<PipRecord>
                                                            listViewPipRecordList =
                                                            snapshot.data!;
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewPipRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewPipRecord =
                                                                listViewPipRecordList[
                                                                    listViewIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          12,
                                                                          0,
                                                                          12),
                                                              child: StreamBuilder<
                                                                  EmpresasRecord>(
                                                                stream: EmpresasRecord
                                                                    .getDocument(
                                                                        listViewPipRecord
                                                                            .iDEmpresa!),
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
                                                                  final containerEmpresasRecord =
                                                                      snapshot
                                                                          .data!;
                                                                  return Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        10,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xA4000425),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20,
                                                                            20,
                                                                            20,
                                                                            20),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  FFLocalizations.of(context).getText(
                                                                                    'lq1rjda2' /* INFORMACION DE LA EMPRESA */,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).title2,
                                                                                ),
                                                                                InkWell(
                                                                                  onTap: () async {
                                                                                    context.pushNamed(
                                                                                      'Registro',
                                                                                      queryParams: {
                                                                                        'ref': serializeParam(
                                                                                          listViewPipRecord.reference,
                                                                                          ParamType.DocumentReference,
                                                                                        ),
                                                                                      }.withoutNulls,
                                                                                    );
                                                                                  },
                                                                                  child: Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 8,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.circular(8),
                                                                                    ),
                                                                                    child: Container(
                                                                                      height: 35,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Color(0x3300FFD8),
                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                        border: Border.all(
                                                                                          color: Color(0xFF00FFD8),
                                                                                          width: 1,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 2, 0),
                                                                                              child: Text(
                                                                                                FFLocalizations.of(context).getText(
                                                                                                  'kf3n8ai3' /* Registrarme */,
                                                                                                ),
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                                              child: Icon(
                                                                                                Icons.arrow_forward_sharp,
                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                size: 18,
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
                                                                            Divider(
                                                                              thickness: 1,
                                                                              color: Color(0xFF00FFD8),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                                                                                    child: Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        '3pm55ff5' /* Analiza la información y toma ... */,
                                                                                      ),
                                                                                      textAlign: TextAlign.start,
                                                                                      maxLines: 2,
                                                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                                                                  child: SingleChildScrollView(
                                                                                    scrollDirection: Axis.horizontal,
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                                                                          child: Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 8,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3300FFD8),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Material(
                                                                                                      color: Colors.transparent,
                                                                                                      elevation: 10,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      child: Container(
                                                                                                        width: 80,
                                                                                                        height: 80,
                                                                                                        decoration: BoxDecoration(
                                                                                                          boxShadow: [
                                                                                                            BoxShadow(
                                                                                                              blurRadius: 4,
                                                                                                              color: Color(0x33000000),
                                                                                                              offset: Offset(0, 2),
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
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                                          child: Image.network(
                                                                                                            containerEmpresasRecord.icono!,
                                                                                                            width: 100,
                                                                                                            height: 100,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'wx2h5349' /* Empresa */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                    fontFamily: 'Roboto',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 16,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            containerEmpresasRecord.nombre!,
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'uh66zeri' /* Inicio de Operaciones */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'epfwdt1s' /* N° de Registro Legal */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'q55c8sx2' /* Direccion Fiscal. */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'jkbk2u8d' /* Sitio Web Oficial */,
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
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                                                                          child: Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 8,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3300FFD8),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Material(
                                                                                                      color: Colors.transparent,
                                                                                                      elevation: 10,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      child: Container(
                                                                                                        width: 80,
                                                                                                        height: 80,
                                                                                                        decoration: BoxDecoration(
                                                                                                          boxShadow: [
                                                                                                            BoxShadow(
                                                                                                              blurRadius: 4,
                                                                                                              color: Color(0x33000000),
                                                                                                              offset: Offset(0, 2),
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
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        child: ClipRRect(
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                          child: Image.network(
                                                                                                            'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                            width: 80,
                                                                                                            height: 80,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'zvt0s8cu' /* CEO */,
                                                                                                              ),
                                                                                                              maxLines: 2,
                                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                    fontFamily: 'Roboto',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 16,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'mbu8mu3q' /* Nombre */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              '7pvgcmiy' /* Nacionalidad */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              '1tv3qqp4' /* N° de Identificacion */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'yi7v2xcd' /* Cargo */,
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
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                                                                          child: Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 8,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3300FFD8),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Material(
                                                                                                      color: Colors.transparent,
                                                                                                      elevation: 8,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      child: Container(
                                                                                                        width: 80,
                                                                                                        height: 80,
                                                                                                        decoration: BoxDecoration(
                                                                                                          boxShadow: [
                                                                                                            BoxShadow(
                                                                                                              blurRadius: 4,
                                                                                                              color: Color(0x33000000),
                                                                                                              offset: Offset(0, 2),
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
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                                          child: Image.asset(
                                                                                                            'assets/images/pool.png',
                                                                                                            width: 100,
                                                                                                            height: 100,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'tpernv7p' /* Pool de Liquidez */,
                                                                                                              ),
                                                                                                              maxLines: 2,
                                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                    fontFamily: 'Roboto',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 16,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              '5axg7zq4' /* Pool 01 */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'anayn0yx' /* Pool 02 */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'pi0hkipv' /* Pool 02 */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'g90nlca5' /* Pool 02 */,
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
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                                                                                          child: Material(
                                                                                            color: Colors.transparent,
                                                                                            elevation: 8,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                            ),
                                                                                            child: Container(
                                                                                              decoration: BoxDecoration(
                                                                                                color: Color(0x3300FFD8),
                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                  children: [
                                                                                                    Material(
                                                                                                      color: Colors.transparent,
                                                                                                      elevation: 8,
                                                                                                      shape: RoundedRectangleBorder(
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                      child: Container(
                                                                                                        width: 80,
                                                                                                        height: 80,
                                                                                                        decoration: BoxDecoration(
                                                                                                          boxShadow: [
                                                                                                            BoxShadow(
                                                                                                              blurRadius: 4,
                                                                                                              color: Color(0x33000000),
                                                                                                              offset: Offset(0, 2),
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
                                                                                                          borderRadius: BorderRadius.circular(8),
                                                                                                        ),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                                          child: Image.asset(
                                                                                                            'assets/images/financiero.png',
                                                                                                            width: 100,
                                                                                                            height: 100,
                                                                                                            fit: BoxFit.cover,
                                                                                                          ),
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'asdu60iu' /* Datos Financieros */,
                                                                                                              ),
                                                                                                              maxLines: 2,
                                                                                                              style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                    fontFamily: 'Roboto',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 16,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'z48ewack' /* Usuarios Activos */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'f9rqwy6f' /* Rentabilidad */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              'ymqrk90d' /* Liquidez de la Empresa */,
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).title3.override(
                                                                                                                  fontFamily: 'Roboto',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 10,
                                                                                                                ),
                                                                                                          ),
                                                                                                          Text(
                                                                                                            FFLocalizations.of(context).getText(
                                                                                                              '6mp0podb' /* Proyeccion */,
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
                                                  ],
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
