import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_timer.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DocDisclaimerWidget extends StatefulWidget {
  const DocDisclaimerWidget({Key? key}) : super(key: key);

  @override
  _DocDisclaimerWidgetState createState() => _DocDisclaimerWidgetState();
}

class _DocDisclaimerWidgetState extends State<DocDisclaimerWidget> {
  int timerMilliseconds = 40000;
  String timerValue = StopWatchTimer.getDisplayTime(
    40000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  StopWatchTimer timerController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      timerController.onExecute.add(StopWatchExecute.start);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    timerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<DisclaimerRecord>>(
      stream: queryDisclaimerRecord(
        queryBuilder: (disclaimerRecord) =>
            disclaimerRecord.where('id_User', isEqualTo: currentUserReference),
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
        List<DisclaimerRecord> docDisclaimerDisclaimerRecordList =
            snapshot.data!;
        final docDisclaimerDisclaimerRecord =
            docDisclaimerDisclaimerRecordList.isNotEmpty
                ? docDisclaimerDisclaimerRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: StreamBuilder<PipRecord>(
              stream:
                  PipRecord.getDocument(docDisclaimerDisclaimerRecord!.idPip!),
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
                final containerPipRecord = snapshot.data!;
                return Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
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
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 1,
                            constraints: BoxConstraints(
                              maxWidth: 500,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 20, 25, 8),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  25, 0, 0, 0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4cio1usn' /* Descargo de Responsabilidad */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Roboto',
                                                  color: Colors.black,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: StreamBuilder<EmpresasRecord>(
                                            stream: EmpresasRecord.getDocument(
                                                containerPipRecord.iDEmpresa!),
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
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Material(
                                                    color: Colors.transparent,
                                                    elevation: 2,
                                                    shape: const CircleBorder(),
                                                    child: Container(
                                                      width: 30,
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.network(
                                                            rowEmpresasRecord
                                                                .icono!,
                                                          ).image,
                                                        ),
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                8, 0, 0, 0),
                                                    child: Text(
                                                      rowEmpresasRecord.nombre!,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title3
                                                              .override(
                                                                fontFamily:
                                                                    'Roboto',
                                                                color: Color(
                                                                    0xFF000425),
                                                                fontSize: 12,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 6, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'evd5mk0p' /* www.teamdnt.pro es una comunid... */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qhcd86o0' /* Por lo tanto, la comunidad www... */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ls40iq2t' /* Todos los proyectos que la com... */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'am4ewh0t' /* Tomando en cuenta que las inve... */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: AuthUserStreamWidget(
                                              builder: (context) => Text(
                                                'Entendiendo que resultados pasados no garantizan resultados futuros y que. Yo: ${currentUserDisplayName} con cédula de identidad y ciudadanía N°. ${docDisclaimerDisclaimerRecord!.numeroIdentidad?.toString()} de forma  voluntaria y bajo mi propia responsabilidad participaré en  en el proyecto que actualmente la comunidad DNT está desarrollando.',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: Colors.black,
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
                                        0, 2, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'h24n46iz' /* En consecuencia, declaro libre... */,
                                              ),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 2, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 0, 25, 6),
                                            child: Text(
                                              'FECHA: ${dateTimeFormat(
                                                'yMMMd',
                                                docDisclaimerDisclaimerRecord!
                                                    .fecha,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              )}',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Roboto Condensed',
                                                        color: Colors.black,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 350,
                                    constraints: BoxConstraints(
                                      maxWidth: 350,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.network(
                                            docDisclaimerDisclaimerRecord!
                                                .signature!,
                                            width: 210,
                                            height: 90,
                                            fit: BoxFit.contain,
                                          ),
                                          SizedBox(
                                            width: 200,
                                            child: Divider(
                                              thickness: 1,
                                              indent: 1,
                                              endIndent: 1,
                                              color: Colors.black,
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 2),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) => Text(
                                                      'Nombre: ${currentUserDisplayName}',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Roboto Condensed',
                                                            color: Colors.black,
                                                            fontSize: 10,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 4),
                                                  child: Text(
                                                    'Número de Identidad: ${docDisclaimerDisclaimerRecord!.numeroIdentidad.toString()}',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Roboto Condensed',
                                                          color: Colors.black,
                                                          fontSize: 10,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          StreamBuilder<UsersRecord>(
                                            stream: UsersRecord.getDocument(
                                                containerPipRecord.idUser!),
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
                                              final rowUsersRecord =
                                                  snapshot.data!;
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 4),
                                                      child: Text(
                                                        'Patrocinador: ${rowUsersRecord.displayName}',
                                                        textAlign:
                                                            TextAlign.center,
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
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 30),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Stack(
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 20, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'r7ss21yg' /* Pag. 01 */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              FlutterFlowTimer(
                                                initialTime: timerMilliseconds,
                                                getDisplayTime: (value) =>
                                                    StopWatchTimer
                                                        .getDisplayTime(
                                                  value,
                                                  hours: false,
                                                  minute: false,
                                                  milliSecond: false,
                                                ),
                                                timer: timerController,
                                                updateStateInterval: Duration(
                                                    milliseconds: 1000),
                                                onChanged: (value, displayTime,
                                                    shouldUpdate) {
                                                  timerMilliseconds = value;
                                                  timerValue = displayTime;
                                                  if (shouldUpdate)
                                                    setState(() {});
                                                },
                                                onEnded: () async {
                                                  await launchURL(
                                                      containerPipRecord
                                                          .urlDelNegocio!);
                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();
                                                  await signOut();

                                                  context.goNamedAuth(
                                                      'Login', mounted);
                                                },
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .title2
                                                        .override(
                                                          fontFamily: 'Roboto',
                                                          color:
                                                              Color(0xA4000425),
                                                        ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'iesp8f23' /* www.teamdnt.pro */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
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
                );
              },
            ),
          ),
        );
      },
    );
  }
}
