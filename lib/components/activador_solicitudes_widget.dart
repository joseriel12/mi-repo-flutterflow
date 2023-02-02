import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ActivadorSolicitudesWidget extends StatefulWidget {
  const ActivadorSolicitudesWidget({
    Key? key,
    this.idSolicitud,
    this.idUser,
  }) : super(key: key);

  final DocumentReference? idSolicitud;
  final DocumentReference? idUser;

  @override
  _ActivadorSolicitudesWidgetState createState() =>
      _ActivadorSolicitudesWidgetState();
}

class _ActivadorSolicitudesWidgetState
    extends State<ActivadorSolicitudesWidget> {
  bool? switchValue;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<SolicitudesDNTRecord>(
      stream: SolicitudesDNTRecord.getDocument(widget.idSolicitud!),
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
        final containerSolicitudesDNTRecord = snapshot.data!;
        return Container(
          decoration: BoxDecoration(),
          child: StreamBuilder<List<PipRecord>>(
            stream: queryPipRecord(
              queryBuilder: (pipRecord) => pipRecord.where('id_Solicitud',
                  isEqualTo: widget.idSolicitud),
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
              List<PipRecord> containerPipRecordList = snapshot.data!;
              final containerPipRecord = containerPipRecordList.isNotEmpty
                  ? containerPipRecordList.first
                  : null;
              return Container(
                decoration: BoxDecoration(),
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
                    final switchUsersRecord = snapshot.data!;
                    return Switch(
                      value: switchValue ??=
                          containerSolicitudesDNTRecord.estado!,
                      onChanged: (newValue) async {
                        setState(() => switchValue = newValue!);
                        if (newValue!) {
                          if (valueOrDefault<bool>(
                              currentUserDocument?.isAdmin, false)) {
                            final solicitudesDNTUpdateData =
                                createSolicitudesDNTRecordData(
                              estado: true,
                            );
                            await widget.idSolicitud!
                                .update(solicitudesDNTUpdateData);

                            final pipUpdateData = createPipRecordData(
                              estado: true,
                            );
                            await containerPipRecord!.reference
                                .update(pipUpdateData);
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('ESTATUS'),
                                  content: Text(
                                      'Solicitud: Aprovada......... Usuario con acceso a Team DNT y las herramientas de la empresa que promociona.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Aceptar'),
                                    ),
                                  ],
                                );
                              },
                            );
                            if (switchUsersRecord.isTeamDNT!) {
                              return;
                            }

                            final usersUpdateData = createUsersRecordData(
                              isTeamDNT: true,
                            );
                            await widget.idUser!.update(usersUpdateData);
                            return;
                          } else {
                            return;
                          }
                        } else {
                          if (valueOrDefault<bool>(
                              currentUserDocument?.isAdmin, false)) {
                            final solicitudesDNTUpdateData =
                                createSolicitudesDNTRecordData(
                              estado: false,
                            );
                            await widget.idSolicitud!
                                .update(solicitudesDNTUpdateData);

                            final pipUpdateData = createPipRecordData(
                              estado: false,
                            );
                            await containerPipRecord!.reference
                                .update(pipUpdateData);
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('ESTATUS'),
                                  content: Text(
                                      'Solicitud: Desactivada......... Usuario Sin Acceso a Team DNT y las herramientas de la empresa que promociona.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
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
                    );
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
