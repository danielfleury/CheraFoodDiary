import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'entry_page_model.dart';
export 'entry_page_model.dart';

class EntryPageWidget extends StatefulWidget {
  const EntryPageWidget({Key? key}) : super(key: key);

  @override
  _EntryPageWidgetState createState() => _EntryPageWidgetState();
}

class _EntryPageWidgetState extends State<EntryPageWidget> {
  late EntryPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntryPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Login');
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(40.0, 40.0, 40.0, 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Chera Health',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Merriweather',
                            color: Color(0xFF444444),
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Reimagining eating disorder recovery.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Merriweather',
                            color: Color(0xFF6D6D6D),
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/personal-growth.gif',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.27,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Welcome to Chera.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Merriweather',
                            color: Color(0xFF444444),
                            fontSize: 30.0,
                            fontWeight: FontWeight.w100,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Your intelligent food diary, nutrition assistant, and diet hub all in one. ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Merriweather',
                            color: Color(0xFF606060),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w200,
                            lineHeight: 1.6,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('Register');
                      },
                      text: 'Get Started',
                      icon: Icon(
                        Icons.check_sharp,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 180.0,
                        height: 70.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xFF202020),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Merriweather',
                                  color: Color(0xFFE6E6E6),
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.0,
                        ),
                        borderRadius: BorderRadius.circular(2000.0),
                      ),
                    ),
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
