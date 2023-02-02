import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/menu_izquierdo_widget.dart';
import '../components/menu_seting_widget.dart';
import '../components/menu_superior_widget.dart';
import '../components/noticias_derecha_widget.dart';
import '../components/whats_app_funel_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EditarFunnelWidget extends StatefulWidget {
  const EditarFunnelWidget({
    Key? key,
    this.idfunnel,
  }) : super(key: key);

  final DocumentReference? idfunnel;

  @override
  _EditarFunnelWidgetState createState() => _EditarFunnelWidgetState();
}

class _EditarFunnelWidgetState extends State<EditarFunnelWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  TextEditingController? nameDuenoFunnelController;
  TextEditingController? biografiaFunnnelController;
  String? dropDownValue;
  TextEditingController? whatsappFunnelController;
  TextEditingController? facebookFunnelController;
  TextEditingController? instragramFunnelController;
  TextEditingController? mENSAJEwhatsappFunnelController;
  TextEditingController? telegramFunnelController;
  TextEditingController? direccionFunnelController;
  TextEditingController? tituloFunnelController;
  TextEditingController? funelDescripcionController;
  TextEditingController? enlaceReferidoController;
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
    biografiaFunnnelController?.dispose();
    nameDuenoFunnelController?.dispose();
    direccionFunnelController?.dispose();
    tituloFunnelController?.dispose();
    funelDescripcionController?.dispose();
    enlaceReferidoController?.dispose();
    facebookFunnelController?.dispose();
    instragramFunnelController?.dispose();
    whatsappFunnelController?.dispose();
    mENSAJEwhatsappFunnelController?.dispose();
    telegramFunnelController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<PipRecord>(
      stream: PipRecord.getDocument(widget.idfunnel!),
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
        final editarFunnelPipRecord = snapshot.data!;
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
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 20, 12, 8),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    GradientText(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6k5vg7ot' /* EDITAR FUNNEL */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                          '2l4f9kqp' /* Personaliza tu funnel y compar... */,
                                                        ),
                                                        maxLines: 3,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 30),
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            1,
                                                    decoration: BoxDecoration(),
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
                                                                Color(
                                                                    0xFF00FFD8),
                                                            indicatorWeight: 1,
                                                            tabs: [
                                                              Row(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12,
                                                                            0,
                                                                            4,
                                                                            0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .edit,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                                  Tab(
                                                                    text: FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'lbviwrrz' /* Editor */,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            4,
                                                                            0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .people_rounded,
                                                                      size: 20,
                                                                    ),
                                                                  ),
                                                                  Tab(
                                                                    text:
                                                                        'Prospectos ${editarFunnelPipRecord.numeroPrspectos.toString()}',
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: TabBarView(
                                                              children: [
                                                                KeepAliveWidgetWrapper(
                                                                  builder:
                                                                      (context) =>
                                                                          Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            2,
                                                                            0,
                                                                            20),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0,
                                                                                12,
                                                                                0,
                                                                                20),
                                                                            child:
                                                                                SingleChildScrollView(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(4, 8, 4, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              children: [
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      context.pop();
                                                                                                    },
                                                                                                    child: Icon(
                                                                                                      Icons.arrow_back_rounded,
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Text(
                                                                                                  FFLocalizations.of(context).getText(
                                                                                                    'ne9oquge' /* EDITAR FUNNEL */,
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
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                                  child: InkWell(
                                                                                                    onTap: () async {
                                                                                                      if (editarFunnelPipRecord.estado!) {
                                                                                                        await Clipboard.setData(ClipboardData(text: editarFunnelPipRecord.linkFunnel!));
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
                                                                                                      if (editarFunnelPipRecord.estado!) {
                                                                                                        context.pushNamed(
                                                                                                          'Funnnel',
                                                                                                          queryParams: {
                                                                                                            'user': serializeParam(
                                                                                                              editarFunnelPipRecord.direcionURL,
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
                                                                                                      Icons.remove_red_eye,
                                                                                                      color: Color(0xFF00FFE0),
                                                                                                      size: 24,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                InkWell(
                                                                                                  onTap: () async {
                                                                                                    if (editarFunnelPipRecord.estado!) {
                                                                                                      await widget.idfunnel!.delete();
                                                                                                      context.pop();
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
                                                                                                    Icons.delete_rounded,
                                                                                                    color: Color(0xFFFF1616),
                                                                                                    size: 24,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary20,
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).secondary20,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      '5bbn6hdb' /* COFIGURACIONES GENERALES */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                                          fontFamily: 'Roboto',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Stack(
                                                                                                    children: [
                                                                                                      Align(
                                                                                                        alignment: AlignmentDirectional(50.28, 0),
                                                                                                        child: Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                          child: FFButtonWidget(
                                                                                                            onPressed: () async {
                                                                                                              final pipUpdateData = createPipRecordData(
                                                                                                                titulo: (tituloFunnelController?.text ?? '') != null && (tituloFunnelController?.text ?? '') != '' ? (tituloFunnelController?.text ?? '') : editarFunnelPipRecord.titulo,
                                                                                                                descripcion: (funelDescripcionController?.text ?? '') != null && (funelDescripcionController?.text ?? '') != '' ? (funelDescripcionController?.text ?? '') : editarFunnelPipRecord.descripcion,
                                                                                                                urlDelNegocio: (enlaceReferidoController?.text ?? '') != null && (enlaceReferidoController?.text ?? '') != '' ? (enlaceReferidoController?.text ?? '') : editarFunnelPipRecord.urlDelNegocio,
                                                                                                                facebook: (facebookFunnelController?.text ?? '') != null && (facebookFunnelController?.text ?? '') != '' ? 'https://www.facebook.com/${facebookFunnelController?.text ?? ''}' : editarFunnelPipRecord.facebook,
                                                                                                                instagram: (instragramFunnelController?.text ?? '') != null && (instragramFunnelController?.text ?? '') != '' ? 'https://www.instagram.com/${editarFunnelPipRecord.instagram}' : editarFunnelPipRecord.instagram,
                                                                                                                codWhatsapp: dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp,
                                                                                                                whatsApp: (whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp,
                                                                                                                mensajeWhatsapp: (mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp,
                                                                                                                urlWhatsapp: 'https://api.whatsapp.com/send?phone=${dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp}${(whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp}&text=${(mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp}',
                                                                                                                telegram: 'https://t.me/${(telegramFunnelController?.text ?? '') != null && (telegramFunnelController?.text ?? '') != '' ? (telegramFunnelController?.text ?? '') : editarFunnelPipRecord.telegram}',
                                                                                                                nombreDueno: (nameDuenoFunnelController?.text ?? '') != null && (nameDuenoFunnelController?.text ?? '') != '' ? (nameDuenoFunnelController?.text ?? '') : editarFunnelPipRecord.nombreDueno,
                                                                                                                photoDueno: valueOrDefault<String>(
                                                                                                                  isMediaUploading != null ? uploadedFileUrl : editarFunnelPipRecord.photoDueno,
                                                                                                                  'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                ),
                                                                                                                biografia: (biografiaFunnnelController?.text ?? '') != null && (biografiaFunnnelController?.text ?? '') != '' ? (biografiaFunnnelController?.text ?? '') : editarFunnelPipRecord.biografia,
                                                                                                                direcionURL: (direccionFunnelController?.text ?? '') != null && (direccionFunnelController?.text ?? '') != '' ? (direccionFunnelController?.text ?? '') : editarFunnelPipRecord.direcionURL,
                                                                                                              );
                                                                                                              await editarFunnelPipRecord.reference.update(pipUpdateData);
                                                                                                              await showDialog(
                                                                                                                context: context,
                                                                                                                builder: (alertDialogContext) {
                                                                                                                  return AlertDialog(
                                                                                                                    title: Text('CAMBIOS GUARDADOS'),
                                                                                                                    content: Text('Los cambios fueron aplicados correctamennte.'),
                                                                                                                    actions: [
                                                                                                                      TextButton(
                                                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                                                        child: Text('Aceptar'),
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  );
                                                                                                                },
                                                                                                              );
                                                                                                            },
                                                                                                            text: FFLocalizations.of(context).getText(
                                                                                                              '1ppwnzz6' /* GUARDAR */,
                                                                                                            ),
                                                                                                            icon: Icon(
                                                                                                              Icons.save,
                                                                                                              size: 20,
                                                                                                            ),
                                                                                                            options: FFButtonOptions(
                                                                                                              width: 110,
                                                                                                              height: 35,
                                                                                                              color: Color(0xFF000923),
                                                                                                              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  ),
                                                                                                              elevation: 8,
                                                                                                              borderSide: BorderSide(
                                                                                                                color: FlutterFlowTheme.of(context).tertiary400,
                                                                                                                width: 1,
                                                                                                              ),
                                                                                                              borderRadius: BorderRadius.circular(8),
                                                                                                            ),
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
                                                                                              indent: 1,
                                                                                              color: FlutterFlowTheme.of(context).secondary20,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'mrrnlj5z' /* Titulo */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: tituloFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.titulo,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '2kwrqvao' /* Dirección URL */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: direccionFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.direcionURL,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
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
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'xoljyzju' /* Descripción */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: funelDescripcionController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.descripcion,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                            maxLines: 6,
                                                                                                            keyboardType: TextInputType.multiline,
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
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary20,
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).secondary20,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'z2sqan59' /* PROSPECCIÓN DEL NEGOCIO */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                                          fontFamily: 'Roboto',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        final pipUpdateData = createPipRecordData(
                                                                                                          titulo: (tituloFunnelController?.text ?? '') != null && (tituloFunnelController?.text ?? '') != '' ? (tituloFunnelController?.text ?? '') : editarFunnelPipRecord.titulo,
                                                                                                          descripcion: (funelDescripcionController?.text ?? '') != null && (funelDescripcionController?.text ?? '') != '' ? (funelDescripcionController?.text ?? '') : editarFunnelPipRecord.descripcion,
                                                                                                          urlDelNegocio: (enlaceReferidoController?.text ?? '') != null && (enlaceReferidoController?.text ?? '') != '' ? (enlaceReferidoController?.text ?? '') : editarFunnelPipRecord.urlDelNegocio,
                                                                                                          facebook: (facebookFunnelController?.text ?? '') != null && (facebookFunnelController?.text ?? '') != '' ? 'https://www.facebook.com/${facebookFunnelController?.text ?? ''}' : editarFunnelPipRecord.facebook,
                                                                                                          instagram: (instragramFunnelController?.text ?? '') != null && (instragramFunnelController?.text ?? '') != '' ? 'https://www.instagram.com/${editarFunnelPipRecord.instagram}' : editarFunnelPipRecord.instagram,
                                                                                                          codWhatsapp: dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp,
                                                                                                          whatsApp: (whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp,
                                                                                                          mensajeWhatsapp: (mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp,
                                                                                                          urlWhatsapp: 'https://api.whatsapp.com/send?phone=${dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp}${(whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp}&text=${(mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp}',
                                                                                                          telegram: 'https://t.me/${(telegramFunnelController?.text ?? '') != null && (telegramFunnelController?.text ?? '') != '' ? (telegramFunnelController?.text ?? '') : editarFunnelPipRecord.telegram}',
                                                                                                          nombreDueno: (nameDuenoFunnelController?.text ?? '') != null && (nameDuenoFunnelController?.text ?? '') != '' ? (nameDuenoFunnelController?.text ?? '') : editarFunnelPipRecord.nombreDueno,
                                                                                                          photoDueno: valueOrDefault<String>(
                                                                                                            isMediaUploading != null ? uploadedFileUrl : editarFunnelPipRecord.photoDueno,
                                                                                                            'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                          ),
                                                                                                          biografia: (biografiaFunnnelController?.text ?? '') != null && (biografiaFunnnelController?.text ?? '') != '' ? (biografiaFunnnelController?.text ?? '') : editarFunnelPipRecord.biografia,
                                                                                                          direcionURL: (direccionFunnelController?.text ?? '') != null && (direccionFunnelController?.text ?? '') != '' ? (direccionFunnelController?.text ?? '') : editarFunnelPipRecord.direcionURL,
                                                                                                        );
                                                                                                        await editarFunnelPipRecord.reference.update(pipUpdateData);
                                                                                                      },
                                                                                                      text: FFLocalizations.of(context).getText(
                                                                                                        'dr3at797' /* GUARDAR */,
                                                                                                      ),
                                                                                                      icon: Icon(
                                                                                                        Icons.save,
                                                                                                        size: 20,
                                                                                                      ),
                                                                                                      options: FFButtonOptions(
                                                                                                        width: 110,
                                                                                                        height: 35,
                                                                                                        color: Color(0xFF000923),
                                                                                                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                        elevation: 8,
                                                                                                        borderSide: BorderSide(
                                                                                                          color: FlutterFlowTheme.of(context).tertiary400,
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Divider(
                                                                                              thickness: 1,
                                                                                              indent: 1,
                                                                                              color: FlutterFlowTheme.of(context).secondary20,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'g8lf42d2' /* Enlace de Referido */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: enlaceReferidoController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.urlDelNegocio,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
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
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary20,
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).secondary20,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      'nqrrmz3p' /* REDES SOCIALES */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                                          fontFamily: 'Roboto',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        final pipUpdateData = createPipRecordData(
                                                                                                          titulo: (tituloFunnelController?.text ?? '') != null && (tituloFunnelController?.text ?? '') != '' ? (tituloFunnelController?.text ?? '') : editarFunnelPipRecord.titulo,
                                                                                                          descripcion: (funelDescripcionController?.text ?? '') != null && (funelDescripcionController?.text ?? '') != '' ? (funelDescripcionController?.text ?? '') : editarFunnelPipRecord.descripcion,
                                                                                                          urlDelNegocio: (enlaceReferidoController?.text ?? '') != null && (enlaceReferidoController?.text ?? '') != '' ? (enlaceReferidoController?.text ?? '') : editarFunnelPipRecord.urlDelNegocio,
                                                                                                          facebook: (facebookFunnelController?.text ?? '') != null && (facebookFunnelController?.text ?? '') != '' ? 'https://www.facebook.com/${facebookFunnelController?.text ?? ''}' : editarFunnelPipRecord.facebook,
                                                                                                          instagram: (instragramFunnelController?.text ?? '') != null && (instragramFunnelController?.text ?? '') != '' ? 'https://www.instagram.com/${editarFunnelPipRecord.instagram}' : editarFunnelPipRecord.instagram,
                                                                                                          codWhatsapp: dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp,
                                                                                                          whatsApp: (whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp,
                                                                                                          mensajeWhatsapp: (mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp,
                                                                                                          urlWhatsapp: 'https://api.whatsapp.com/send?phone=${dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp}${(whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp}&text=${(mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp}',
                                                                                                          telegram: 'https://t.me/${(telegramFunnelController?.text ?? '') != null && (telegramFunnelController?.text ?? '') != '' ? (telegramFunnelController?.text ?? '') : editarFunnelPipRecord.telegram}',
                                                                                                          nombreDueno: (nameDuenoFunnelController?.text ?? '') != null && (nameDuenoFunnelController?.text ?? '') != '' ? (nameDuenoFunnelController?.text ?? '') : editarFunnelPipRecord.nombreDueno,
                                                                                                          photoDueno: valueOrDefault<String>(
                                                                                                            isMediaUploading != null ? uploadedFileUrl : editarFunnelPipRecord.photoDueno,
                                                                                                            'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                          ),
                                                                                                          biografia: (biografiaFunnnelController?.text ?? '') != null && (biografiaFunnnelController?.text ?? '') != '' ? (biografiaFunnnelController?.text ?? '') : editarFunnelPipRecord.biografia,
                                                                                                          direcionURL: (direccionFunnelController?.text ?? '') != null && (direccionFunnelController?.text ?? '') != '' ? (direccionFunnelController?.text ?? '') : editarFunnelPipRecord.direcionURL,
                                                                                                        );
                                                                                                        await editarFunnelPipRecord.reference.update(pipUpdateData);
                                                                                                      },
                                                                                                      text: FFLocalizations.of(context).getText(
                                                                                                        '0evh16lf' /* GUARDAR */,
                                                                                                      ),
                                                                                                      icon: Icon(
                                                                                                        Icons.save,
                                                                                                        size: 20,
                                                                                                      ),
                                                                                                      options: FFButtonOptions(
                                                                                                        width: 110,
                                                                                                        height: 35,
                                                                                                        color: Color(0xFF000923),
                                                                                                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                        elevation: 8,
                                                                                                        borderSide: BorderSide(
                                                                                                          color: FlutterFlowTheme.of(context).tertiary400,
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Divider(
                                                                                              thickness: 1,
                                                                                              indent: 1,
                                                                                              color: FlutterFlowTheme.of(context).secondary20,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'gglz1f2y' /* Facebook (usuario) */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: facebookFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.facebook,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'kt7kj5xz' /* Instagram (usuario) */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: instragramFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.instagram,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Divider(
                                                                                              thickness: 1,
                                                                                              indent: 1,
                                                                                              color: FlutterFlowTheme.of(context).secondary20,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '1ksip4o2' /* Código País (+504) */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          StreamBuilder<List<CodPaisesRecord>>(
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
                                                                                                                initialOption: dropDownValue ??= editarFunnelPipRecord.codWhatsapp,
                                                                                                                options: dropDownCodPaisesRecordList.map((e) => e.cod.toString()).toList().toList(),
                                                                                                                optionLabels: dropDownCodPaisesRecordList.map((e) => e.nombre).withoutNulls.toList().toList(),
                                                                                                                onChanged: (val) => setState(() => dropDownValue = val),
                                                                                                                height: 50,
                                                                                                                textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                      fontFamily: 'Roboto Condensed',
                                                                                                                      color: Colors.black,
                                                                                                                    ),
                                                                                                                hintText: FFLocalizations.of(context).getText(
                                                                                                                  '8fs480zj' /* Seleccionar... */,
                                                                                                                ),
                                                                                                                fillColor: Colors.white,
                                                                                                                elevation: 2,
                                                                                                                borderColor: Colors.transparent,
                                                                                                                borderWidth: 0,
                                                                                                                borderRadius: 8,
                                                                                                                margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                                                                                                                hidesUnderline: true,
                                                                                                              );
                                                                                                            },
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'mqsv4psb' /* WhatsApp (987654321) */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: whatsappFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.whatsApp,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                            keyboardType: TextInputType.number,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'u0trypko' /* Mensaje WhatsApp */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: mENSAJEwhatsappFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.mensajeWhatsapp,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                                '0lx0b2ez' /* Escribe un mensaje de innicio.... */,
                                                                                                              ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                            maxLines: 3,
                                                                                                            keyboardType: TextInputType.multiline,
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Divider(
                                                                                              thickness: 1,
                                                                                              indent: 1,
                                                                                              color: FlutterFlowTheme.of(context).secondary20,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                '76q9wzmz' /* Usuario de Telegram (usuario) */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: telegramFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.telegram,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: Color(0xFF000030),
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
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
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondary20,
                                                                                        border: Border.all(
                                                                                          color: FlutterFlowTheme.of(context).secondary20,
                                                                                        ),
                                                                                      ),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    FFLocalizations.of(context).getText(
                                                                                                      '1ibwqlpg' /* DATOS PERSOALES */,
                                                                                                    ),
                                                                                                    style: FlutterFlowTheme.of(context).title3.override(
                                                                                                          fontFamily: 'Roboto',
                                                                                                          color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                        ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                                                                                    child: FFButtonWidget(
                                                                                                      onPressed: () async {
                                                                                                        final pipUpdateData = createPipRecordData(
                                                                                                          titulo: (tituloFunnelController?.text ?? '') != null && (tituloFunnelController?.text ?? '') != '' ? (tituloFunnelController?.text ?? '') : editarFunnelPipRecord.titulo,
                                                                                                          descripcion: (funelDescripcionController?.text ?? '') != null && (funelDescripcionController?.text ?? '') != '' ? (funelDescripcionController?.text ?? '') : editarFunnelPipRecord.descripcion,
                                                                                                          urlDelNegocio: (enlaceReferidoController?.text ?? '') != null && (enlaceReferidoController?.text ?? '') != '' ? (enlaceReferidoController?.text ?? '') : editarFunnelPipRecord.urlDelNegocio,
                                                                                                          facebook: (facebookFunnelController?.text ?? '') != null && (facebookFunnelController?.text ?? '') != '' ? 'https://www.facebook.com/${facebookFunnelController?.text ?? ''}' : editarFunnelPipRecord.facebook,
                                                                                                          instagram: (instragramFunnelController?.text ?? '') != null && (instragramFunnelController?.text ?? '') != '' ? 'https://www.instagram.com/${editarFunnelPipRecord.instagram}' : editarFunnelPipRecord.instagram,
                                                                                                          codWhatsapp: dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp,
                                                                                                          whatsApp: (whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp,
                                                                                                          mensajeWhatsapp: (mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp,
                                                                                                          urlWhatsapp: 'https://api.whatsapp.com/send?phone=${dropDownValue != null && dropDownValue != '' ? dropDownValue : editarFunnelPipRecord.codWhatsapp}${(whatsappFunnelController?.text ?? '') != null && (whatsappFunnelController?.text ?? '') != '' ? (whatsappFunnelController?.text ?? '') : editarFunnelPipRecord.whatsApp}&text=${(mENSAJEwhatsappFunnelController?.text ?? '') != null && (mENSAJEwhatsappFunnelController?.text ?? '') != '' ? (mENSAJEwhatsappFunnelController?.text ?? '') : editarFunnelPipRecord.mensajeWhatsapp}',
                                                                                                          telegram: 'https://t.me/${(telegramFunnelController?.text ?? '') != null && (telegramFunnelController?.text ?? '') != '' ? (telegramFunnelController?.text ?? '') : editarFunnelPipRecord.telegram}',
                                                                                                          nombreDueno: (nameDuenoFunnelController?.text ?? '') != null && (nameDuenoFunnelController?.text ?? '') != '' ? (nameDuenoFunnelController?.text ?? '') : editarFunnelPipRecord.nombreDueno,
                                                                                                          photoDueno: valueOrDefault<String>(
                                                                                                            isMediaUploading != null ? uploadedFileUrl : editarFunnelPipRecord.photoDueno,
                                                                                                            'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                          ),
                                                                                                          biografia: (biografiaFunnnelController?.text ?? '') != null && (biografiaFunnnelController?.text ?? '') != '' ? (biografiaFunnnelController?.text ?? '') : editarFunnelPipRecord.biografia,
                                                                                                          direcionURL: (direccionFunnelController?.text ?? '') != null && (direccionFunnelController?.text ?? '') != '' ? (direccionFunnelController?.text ?? '') : editarFunnelPipRecord.direcionURL,
                                                                                                        );
                                                                                                        await editarFunnelPipRecord.reference.update(pipUpdateData);
                                                                                                      },
                                                                                                      text: FFLocalizations.of(context).getText(
                                                                                                        'h82ehf23' /* GUARDAR */,
                                                                                                      ),
                                                                                                      icon: Icon(
                                                                                                        Icons.save,
                                                                                                        size: 20,
                                                                                                      ),
                                                                                                      options: FFButtonOptions(
                                                                                                        width: 110,
                                                                                                        height: 35,
                                                                                                        color: Color(0xFF000923),
                                                                                                        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                              fontFamily: 'Roboto Condensed',
                                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                            ),
                                                                                                        elevation: 8,
                                                                                                        borderSide: BorderSide(
                                                                                                          color: FlutterFlowTheme.of(context).tertiary400,
                                                                                                          width: 1,
                                                                                                        ),
                                                                                                        borderRadius: BorderRadius.circular(8),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Divider(
                                                                                              thickness: 1,
                                                                                              indent: 1,
                                                                                              color: FlutterFlowTheme.of(context).secondary20,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 2),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'io1klumn' /* Nombre */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: nameDuenoFunnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.nombreDueno,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 4, 0, 0),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'xy1zb8hj' /* Foto de Perfil */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Container(
                                                                                                            decoration: BoxDecoration(),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                                              children: [
                                                                                                                FlutterFlowIconButton(
                                                                                                                  borderColor: Colors.transparent,
                                                                                                                  borderRadius: 30,
                                                                                                                  borderWidth: 1,
                                                                                                                  buttonSize: 60,
                                                                                                                  icon: Icon(
                                                                                                                    Icons.photo_camera_sharp,
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    size: 30,
                                                                                                                  ),
                                                                                                                  onPressed: () async {
                                                                                                                    final selectedMedia = await selectMediaWithSourceBottomSheet(
                                                                                                                      context: context,
                                                                                                                      maxWidth: 500.00,
                                                                                                                      maxHeight: 500.00,
                                                                                                                      allowPhoto: true,
                                                                                                                      backgroundColor: Color(0xFF000030),
                                                                                                                      textColor: FlutterFlowTheme.of(context).primaryBtnText,
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
                                                                                                                  },
                                                                                                                ),
                                                                                                                Image.network(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    uploadedFileUrl != null && uploadedFileUrl != '' ? uploadedFileUrl : editarFunnelPipRecord.photoDueno,
                                                                                                                    'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                  ),
                                                                                                                  width: 60,
                                                                                                                  height: 60,
                                                                                                                  fit: BoxFit.cover,
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 12),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Expanded(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                      child: Column(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                                                                                            child: Text(
                                                                                                              FFLocalizations.of(context).getText(
                                                                                                                'emrzkx55' /* Biografía */,
                                                                                                              ),
                                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w600,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextFormField(
                                                                                                            controller: biografiaFunnnelController ??= TextEditingController(
                                                                                                              text: editarFunnelPipRecord.biografia,
                                                                                                            ),
                                                                                                            obscureText: false,
                                                                                                            decoration: InputDecoration(
                                                                                                              labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              hintText: FFLocalizations.of(context).getText(
                                                                                                                'm2ers4ll' /* Describe tu perfil en el negoc... */,
                                                                                                              ),
                                                                                                              hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                    fontFamily: 'Roboto Condensed',
                                                                                                                    fontSize: 10,
                                                                                                                  ),
                                                                                                              enabledBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
                                                                                                                  width: 1,
                                                                                                                ),
                                                                                                                borderRadius: BorderRadius.circular(8),
                                                                                                              ),
                                                                                                              focusedBorder: OutlineInputBorder(
                                                                                                                borderSide: BorderSide(
                                                                                                                  color: Color(0x00000000),
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
                                                                                                              fillColor: FlutterFlowTheme.of(context).lineColor,
                                                                                                              contentPadding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                                                                                            ),
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: Color(0xFF000030),
                                                                                                                  fontSize: 12,
                                                                                                                ),
                                                                                                            maxLines: 6,
                                                                                                            keyboardType: TextInputType.multiline,
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
                                                                KeepAliveWidgetWrapper(
                                                                  builder:
                                                                      (context) =>
                                                                          Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 10),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 10, 0),
                                                                                              child: InkWell(
                                                                                                onTap: () async {
                                                                                                  context.pop();
                                                                                                },
                                                                                                child: Icon(
                                                                                                  Icons.arrow_back_rounded,
                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                  size: 24,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '6i3b9160' /* MIS PROSPECTOS */,
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
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.cloud_download,
                                                                                              color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                              size: 24,
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  StreamBuilder<List<ProspectosRecord>>(
                                                                                    stream: queryProspectosRecord(
                                                                                      queryBuilder: (prospectosRecord) => prospectosRecord.where('id_pip', isEqualTo: widget.idfunnel),
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
                                                                                      List<ProspectosRecord> listViewProspectosRecordList = snapshot.data!;
                                                                                      return ListView.builder(
                                                                                        padding: EdgeInsets.zero,
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: listViewProspectosRecordList.length,
                                                                                        itemBuilder: (context, listViewIndex) {
                                                                                          final listViewProspectosRecord = listViewProspectosRecordList[listViewIndex];
                                                                                          return StreamBuilder<UsersRecord>(
                                                                                            stream: UsersRecord.getDocument(listViewProspectosRecord.idUser!),
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
                                                                                              return Container(
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondary20,
                                                                                                  boxShadow: [
                                                                                                    BoxShadow(
                                                                                                      color: FlutterFlowTheme.of(context).secondary20,
                                                                                                      offset: Offset(0, 2),
                                                                                                    )
                                                                                                  ],
                                                                                                ),
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 8),
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
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              image: DecorationImage(
                                                                                                                fit: BoxFit.cover,
                                                                                                                image: Image.network(
                                                                                                                  valueOrDefault<String>(
                                                                                                                    containerUsersRecord.photoUrl,
                                                                                                                    'https://ixvnrjuoeggpqbnqqfsx.supabase.co/storage/v1/object/public/imagenespost/User%20(1).png',
                                                                                                                  ),
                                                                                                                ).image,
                                                                                                              ),
                                                                                                              shape: BoxShape.circle,
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
                                                                                                                  containerUsersRecord.displayName!,
                                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                        fontFamily: 'Roboto Condensed',
                                                                                                                        color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                        fontSize: 14,
                                                                                                                      ),
                                                                                                                ),
                                                                                                                if (responsiveVisibility(
                                                                                                                  context: context,
                                                                                                                  tablet: false,
                                                                                                                  tabletLandscape: false,
                                                                                                                  desktop: false,
                                                                                                                ))
                                                                                                                  Text(
                                                                                                                    containerUsersRecord.email!,
                                                                                                                    style: FlutterFlowTheme.of(context).bodyText1,
                                                                                                                  ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                      if (responsiveVisibility(
                                                                                                        context: context,
                                                                                                        phone: false,
                                                                                                      ))
                                                                                                        Text(
                                                                                                          containerUsersRecord.email!,
                                                                                                          textAlign: TextAlign.center,
                                                                                                          style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                fontFamily: 'Roboto Condensed',
                                                                                                                color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                fontSize: 14,
                                                                                                              ),
                                                                                                        ),
                                                                                                      Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                          Text(
                                                                                                            containerUsersRecord.numeroWhatsApp!,
                                                                                                            textAlign: TextAlign.center,
                                                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                                  fontFamily: 'Roboto Condensed',
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  fontSize: 14,
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
                                                                                                                barrierColor: Colors.transparent,
                                                                                                                enableDrag: false,
                                                                                                                context: context,
                                                                                                                builder: (context) {
                                                                                                                  return Padding(
                                                                                                                    padding: MediaQuery.of(context).viewInsets,
                                                                                                                    child: WhatsAppFunelWidget(
                                                                                                                      idUser: containerUsersRecord.reference,
                                                                                                                    ),
                                                                                                                  );
                                                                                                                },
                                                                                                              ).then((value) => setState(() {}));
                                                                                                            },
                                                                                                            child: Card(
                                                                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                                              color: Color(0xFF00BD11),
                                                                                                              elevation: 8,
                                                                                                              shape: RoundedRectangleBorder(
                                                                                                                borderRadius: BorderRadius.circular(100),
                                                                                                              ),
                                                                                                              child: Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(6, 4, 6, 4),
                                                                                                                child: FaIcon(
                                                                                                                  FontAwesomeIcons.whatsapp,
                                                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                                  size: 20,
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
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
                                                                                      );
                                                                                    },
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
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
      },
    );
  }
}
