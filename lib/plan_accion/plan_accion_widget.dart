import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PlanAccionWidget extends StatefulWidget {
  const PlanAccionWidget({Key? key}) : super(key: key);

  @override
  _PlanAccionWidgetState createState() => _PlanAccionWidgetState();
}

class _PlanAccionWidgetState extends State<PlanAccionWidget> {
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0xFF06013B),
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            '67fzvfa0' /* Plan de Acción */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Roboto',
                color: FlutterFlowTheme.of(context).primaryBtnText,
              ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: InkWell(
              onTap: () async {
                context.pop();
              },
              child: Icon(
                Icons.clear,
                color: Color(0xFF00FFF5),
                size: 24,
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: FlutterFlowWebView(
                  url:
                      'https://elearning.builderall.com/course/40854/R7suyHkE/',
                  bypass: false,
                  height: MediaQuery.of(context).size.height * 1,
                  verticalScroll: false,
                  horizontalScroll: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
