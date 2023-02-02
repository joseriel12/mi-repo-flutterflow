import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/activador_solicitudes_widget.dart';
import '../components/disclai_mer_widget.dart';
import '../components/whats_app_funel_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataUsuarriosWidget extends StatefulWidget {
  const DataUsuarriosWidget({
    Key? key,
    this.idUser,
  }) : super(key: key);

  final DocumentReference? idUser;

  @override
  _DataUsuarriosWidgetState createState() => _DataUsuarriosWidgetState();
}

class _DataUsuarriosWidgetState extends State<DataUsuarriosWidget> {
  bool? switchValue1;
  bool? switchValue2;
  bool? switchValue3;
  bool? switchValue4;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: StreamBuilder<UsersRecord>(
              stream: UsersRecord.getDocument(widget.idUser!),
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
                final containerUsersRecord = snapshot.data!;
                return Material(
                  color: Colors.transparent,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 500,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).lineColor,
                      borderRadius: BorderRadius.circular(0),
                      border: Border.all(
                        color: Color(0xC3000310),
                        width: 1,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 6),
                                      child: Material(
                                        color: Colors.transparent,
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        child: Container(
                                          width: 60,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            color: Color(0xFF00BD11),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'j1tfm6l9' /* PERFIL DE USUARIO */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xFF000425),
                                                  fontWeight: FontWeight.w900,
                                                ),
                                          ),
                                          InkWell(
                                            onTap: () async {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(
                                              Icons.close_rounded,
                                              color: Colors.black,
                                              size: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 12),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Stack(
                                                alignment:
                                                    AlignmentDirectional(1, 1),
                                                children: [
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 4,
                                                    shape: const CircleBorder(),
                                                    child: Container(
                                                      width: 50,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              containerUsersRecord
                                                                  .photoUrl,
                                                              'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/user02.png',
                                                            ),
                                                          ).image,
                                                        ),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.verified_user,
                                                    color: containerUsersRecord
                                                            .usuarioVerificado!
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .customColor1
                                                        : Color(0x2006013B),
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 0, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      containerUsersRecord
                                                          .displayName!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF000425),
                                                              ),
                                                    ),
                                                    Text(
                                                      containerUsersRecord
                                                          .email!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0xA4000425),
                                                                fontSize: 9,
                                                              ),
                                                    ),
                                                    Text(
                                                      '@${containerUsersRecord.nameUser}',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0xA4000425),
                                                                fontSize: 9,
                                                              ),
                                                    ),
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'j2le377w' /* WhatsApp */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto Condensed',
                                                                color: Color(
                                                                    0xA4000425),
                                                                fontSize: 9,
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
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 8, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child:
                                                              WhatsAppFunelWidget(
                                                            idUser:
                                                                widget.idUser,
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor1,
                                                    elevation: 4,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8, 6, 8, 6),
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .whatsapp,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Card(
                                                clipBehavior:
                                                    Clip.antiAliasWithSaveLayer,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternateTwo,
                                                elevation: 4,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(8, 8, 8, 8),
                                                  child: Icon(
                                                    Icons.chat_bubble_outline,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      thickness: 1,
                                      color: Color(0xFF00231E),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                          '42dzyr4v' /* Permisos de Acceso */,
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color(
                                                                      0xFF000425),
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 8, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          8,
                                                                          0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .arrow_right,
                                                                    color: Colors
                                                                        .black,
                                                                    size: 20,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'fyxhl8hk' /* Team DNT */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Roboto Condensed',
                                                                        color: Color(
                                                                            0xFF000425),
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                            Switch(
                                                              value: switchValue1 ??=
                                                                  containerUsersRecord
                                                                      .isTeamDNT!,
                                                              onChanged:
                                                                  (newValue) async {
                                                                setState(() =>
                                                                    switchValue1 =
                                                                        newValue!);
                                                                if (newValue!) {
                                                                  if (valueOrDefault<
                                                                          bool>(
                                                                      currentUserDocument
                                                                          ?.isAdmin,
                                                                      false)) {
                                                                    final usersUpdateData =
                                                                        createUsersRecordData(
                                                                      isTeamDNT:
                                                                          true,
                                                                    );
                                                                    await widget
                                                                        .idUser!
                                                                        .update(
                                                                            usersUpdateData);
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('ESTATUS'),
                                                                          content:
                                                                              Text('Usuario con Acceso a Team DNT'),
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
                                                                  } else {
                                                                    return;
                                                                  }
                                                                } else {
                                                                  if (valueOrDefault<
                                                                          bool>(
                                                                      currentUserDocument
                                                                          ?.isAdmin,
                                                                      false)) {
                                                                    final usersUpdateData =
                                                                        createUsersRecordData(
                                                                      isTeamDNT:
                                                                          false,
                                                                    );
                                                                    await widget
                                                                        .idUser!
                                                                        .update(
                                                                            usersUpdateData);
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('ESTATUS'),
                                                                          content:
                                                                              Text('Usuario Sin Acceso a Team DNT'),
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
                                                                  } else {
                                                                    return;
                                                                  }
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_right,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'kptqqtie' /* Comerciante */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF000425),
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Switch(
                                                            value: switchValue2 ??=
                                                                containerUsersRecord
                                                                    .isComerciante!,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  switchValue2 =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                if (valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isAdmin,
                                                                    false)) {
                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    isComerciante:
                                                                        true,
                                                                  );
                                                                  await widget
                                                                      .idUser!
                                                                      .update(
                                                                          usersUpdateData);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'ESTATUS'),
                                                                        content:
                                                                            Text('Usuario con Acceso de Comerciante'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Aceptar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                } else {
                                                                  return;
                                                                }
                                                              } else {
                                                                if (valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isAdmin,
                                                                    false)) {
                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    isComerciante:
                                                                        false,
                                                                  );
                                                                  await widget
                                                                      .idUser!
                                                                      .update(
                                                                          usersUpdateData);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'ESTATUS'),
                                                                        content:
                                                                            Text('Usuario Sin Aceso de Comerciante'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Aceptar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                } else {
                                                                  return;
                                                                }
                                                              }
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_right,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ntyd0db0' /* Representante */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF000425),
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Switch(
                                                            value: switchValue3 ??=
                                                                containerUsersRecord
                                                                    .isRepresentante!,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  switchValue3 =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                if (valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isAdmin,
                                                                    false)) {
                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    isRepresentante:
                                                                        true,
                                                                  );
                                                                  await widget
                                                                      .idUser!
                                                                      .update(
                                                                          usersUpdateData);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'ESTATUS'),
                                                                        content:
                                                                            Text('Usuario Representante de Team DNT'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Aceptar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                } else {
                                                                  return;
                                                                }
                                                              } else {
                                                                if (valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isAdmin,
                                                                    false)) {
                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    isRepresentante:
                                                                        false,
                                                                  );
                                                                  await widget
                                                                      .idUser!
                                                                      .update(
                                                                          usersUpdateData);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'ESTATUS'),
                                                                        content:
                                                                            Text('Este Usuario No es Representante de Team DNT'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Aceptar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                } else {
                                                                  return;
                                                                }
                                                              }
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            8,
                                                                            0),
                                                                child: Icon(
                                                                  Icons
                                                                      .arrow_right,
                                                                  color: Colors
                                                                      .black,
                                                                  size: 20,
                                                                ),
                                                              ),
                                                              Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'bx4688gn' /* Administrador */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Roboto Condensed',
                                                                      color: Color(
                                                                          0xFF000425),
                                                                      fontSize:
                                                                          12,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                          Switch(
                                                            value: switchValue4 ??=
                                                                containerUsersRecord
                                                                    .isAdmin!,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  switchValue4 =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                if (valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isAdmin,
                                                                    false)) {
                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    isAdmin:
                                                                        true,
                                                                  );
                                                                  await widget
                                                                      .idUser!
                                                                      .update(
                                                                          usersUpdateData);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'ESTATUS'),
                                                                        content:
                                                                            Text('Usuario con Acceso de Administrador'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Aceptar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                } else {
                                                                  return;
                                                                }
                                                              } else {
                                                                if (valueOrDefault<
                                                                        bool>(
                                                                    currentUserDocument
                                                                        ?.isAdmin,
                                                                    false)) {
                                                                  final usersUpdateData =
                                                                      createUsersRecordData(
                                                                    isAdmin:
                                                                        false,
                                                                  );
                                                                  await widget
                                                                      .idUser!
                                                                      .update(
                                                                          usersUpdateData);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        title: Text(
                                                                            'ESTATUS'),
                                                                        content:
                                                                            Text('Usuario Sin Acceso de Administrador'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Aceptar'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  return;
                                                                } else {
                                                                  return;
                                                                }
                                                              }
                                                            },
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
                                    Divider(
                                      thickness: 1,
                                      color: Color(0xFF00231E),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 4),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'mgk2v194' /* Disclaimer */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: Color(
                                                                        0xFF000425),
                                                                  ),
                                                            ),
                                                            StreamBuilder<
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
                                                                    rowEmpresasRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: List.generate(
                                                                      rowEmpresasRecordList
                                                                          .length,
                                                                      (rowIndex) {
                                                                    final rowEmpresasRecord =
                                                                        rowEmpresasRecordList[
                                                                            rowIndex];
                                                                    return Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              2,
                                                                              0,
                                                                              2,
                                                                              0),
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          FFAppState()
                                                                              .update(() {
                                                                            FFAppState().EmpresaID =
                                                                                rowEmpresasRecord.reference;
                                                                          });
                                                                        },
                                                                        child:
                                                                            Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          elevation:
                                                                              4,
                                                                          shape:
                                                                              RoundedRectangleBorder(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                          ),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              borderRadius: BorderRadius.circular(8),
                                                                            ),
                                                                            child:
                                                                                Align(
                                                                              alignment: AlignmentDirectional(0, 0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(6, 4, 6, 4),
                                                                                child: Text(
                                                                                  rowEmpresasRecord.nombre!,
                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                        fontFamily: 'Roboto Condensed',
                                                                                        color: Colors.black,
                                                                                        fontSize: 10,
                                                                                      ),
                                                                                ),
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
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: StreamBuilder<
                                                            List<
                                                                DisclaimerRecord>>(
                                                          stream:
                                                              queryDisclaimerRecord(
                                                            queryBuilder: (disclaimerRecord) => disclaimerRecord
                                                                .where(
                                                                    'id_User',
                                                                    isEqualTo:
                                                                        widget
                                                                            .idUser)
                                                                .where(
                                                                    'id_empresa',
                                                                    isEqualTo:
                                                                        FFAppState()
                                                                            .EmpresaID),
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
                                                            List<DisclaimerRecord>
                                                                listViewDisclaimerRecordList =
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
                                                                  listViewDisclaimerRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewDisclaimerRecord =
                                                                    listViewDisclaimerRecordList[
                                                                        listViewIndex];
                                                                return Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          1),
                                                                  child: StreamBuilder<
                                                                      PipRecord>(
                                                                    stream: PipRecord.getDocument(
                                                                        listViewDisclaimerRecord
                                                                            .idPip!),
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
                                                                      final containerPipRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 1,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(0, 2),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              4,
                                                                              4,
                                                                              4),
                                                                          child:
                                                                              StreamBuilder<UsersRecord>(
                                                                            stream:
                                                                                UsersRecord.getDocument(containerPipRecord.idUser!),
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
                                                                              final columnUsersRecord = snapshot.data!;
                                                                              return Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                              child: Icon(
                                                                                                Icons.arrow_right,
                                                                                                color: Colors.black,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'fhggx7jl' /* Usuario */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Color(0xFF000425),
                                                                                                    fontSize: 12,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              containerUsersRecord.displayName!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Colors.black,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                              child: Icon(
                                                                                                Icons.arrow_right,
                                                                                                color: Colors.black,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'hertbjza' /* N°_DI */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Color(0xFF000425),
                                                                                                    fontSize: 12,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              listViewDisclaimerRecord.numeroIdentidad!.toString(),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Colors.black,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                    child: StreamBuilder<EmpresasRecord>(
                                                                                      stream: EmpresasRecord.getDocument(listViewDisclaimerRecord.idEmpresa!),
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
                                                                                        final rowEmpresasRecord = snapshot.data!;
                                                                                        return Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                                  child: Icon(
                                                                                                    Icons.arrow_right,
                                                                                                    color: Colors.black,
                                                                                                    size: 20,
                                                                                                  ),
                                                                                                ),
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'jawdsdvr' /* Empresa */,
                                                                                                  ),
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        color: Color(0xFF000425),
                                                                                                        fontSize: 12,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Text(
                                                                                                  rowEmpresasRecord.nombre!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                        color: Colors.black,
                                                                                                      ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                              child: Icon(
                                                                                                Icons.arrow_right,
                                                                                                color: Colors.black,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'i7a0p4n9' /* Fecha de Firma */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Color(0xFF000425),
                                                                                                    fontSize: 12,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Text(
                                                                                              dateTimeFormat(
                                                                                                'yMMMd',
                                                                                                listViewDisclaimerRecord.fecha!,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Colors.black,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                              child: Icon(
                                                                                                Icons.arrow_right,
                                                                                                color: Colors.black,
                                                                                                size: 20,
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'o2pphtsx' /* Docmento */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                    color: Color(0xFF000425),
                                                                                                    fontSize: 12,
                                                                                                  ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            InkWell(
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
                                                                                                      child: DisclaiMerWidget(
                                                                                                        idDisclaimer: listViewDisclaimerRecord.reference,
                                                                                                      ),
                                                                                                    );
                                                                                                  },
                                                                                                ).then((value) => setState(() {}));
                                                                                              },
                                                                                              child: Icon(
                                                                                                Icons.picture_as_pdf,
                                                                                                color: Colors.black,
                                                                                                size: 24,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                            },
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
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8, 8, 8, 8),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 4),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'psxstfg0' /* Solicitud de Herramientas */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title3
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    color: Color(
                                                                        0xFF000425),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: StreamBuilder<
                                                            List<
                                                                SolicitudesDNTRecord>>(
                                                          stream:
                                                              querySolicitudesDNTRecord(
                                                            queryBuilder: (solicitudesDNTRecord) => solicitudesDNTRecord
                                                                .where(
                                                                    'id_User',
                                                                    isEqualTo:
                                                                        widget
                                                                            .idUser)
                                                                .where(
                                                                    'id_empresa',
                                                                    isEqualTo:
                                                                        FFAppState()
                                                                            .EmpresaID),
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
                                                                      EmpresasRecord>(
                                                                    stream: EmpresasRecord.getDocument(
                                                                        listViewSolicitudesDNTRecord
                                                                            .idEmpresa!),
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
                                                                      final containerEmpresasRecord =
                                                                          snapshot
                                                                              .data!;
                                                                      return Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          boxShadow: [
                                                                            BoxShadow(
                                                                              blurRadius: 1,
                                                                              color: Color(0x33000000),
                                                                              offset: Offset(0, 2),
                                                                            )
                                                                          ],
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4,
                                                                              4,
                                                                              4,
                                                                              4),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                          child: Icon(
                                                                                            Icons.arrow_right,
                                                                                            color: Colors.black,
                                                                                            size: 20,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'bff6ke8e' /* Empresa */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF000425),
                                                                                                fontSize: 12,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          containerEmpresasRecord.nombre!,
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Colors.black,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                          child: Icon(
                                                                                            Icons.arrow_right,
                                                                                            color: Colors.black,
                                                                                            size: 20,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            '5wmbdgbt' /* Usuario */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF000425),
                                                                                                fontSize: 12,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          listViewSolicitudesDNTRecord.usuarioEmpresa!,
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Colors.black,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                          child: Icon(
                                                                                            Icons.arrow_right,
                                                                                            color: Colors.black,
                                                                                            size: 20,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'ep892w0w' /* Fecha de Solicitud */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF000425),
                                                                                                fontSize: 12,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Text(
                                                                                          dateTimeFormat(
                                                                                            'yMMMd',
                                                                                            listViewSolicitudesDNTRecord.fechaRegistro!,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Colors.black,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                          child: Icon(
                                                                                            Icons.arrow_right,
                                                                                            color: Colors.black,
                                                                                            size: 20,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          FFLocalizations.of(context).getText(
                                                                                            'jlvzgym6' /* Estado */,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                color: Color(0xFF000425),
                                                                                                fontSize: 12,
                                                                                              ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        ActivadorSolicitudesWidget(
                                                                                          idSolicitud: listViewSolicitudesDNTRecord.reference,
                                                                                          idUser: widget.idUser,
                                                                                        ),
                                                                                      ],
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
                                                                );
                                                              },
                                                            );
                                                          },
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
              },
            ),
          ),
        ),
      ],
    );
  }
}
