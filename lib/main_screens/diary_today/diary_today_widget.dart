import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'diary_today_model.dart';
export 'diary_today_model.dart';

class DiaryTodayWidget extends StatefulWidget {
  const DiaryTodayWidget({Key? key}) : super(key: key);

  @override
  _DiaryTodayWidgetState createState() => _DiaryTodayWidgetState();
}

class _DiaryTodayWidgetState extends State<DiaryTodayWidget> {
  late DiaryTodayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DiaryTodayModel());

    _model.diarytitleController ??= TextEditingController();
    _model.diaryentryController ??= TextEditingController();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 40.0, 30.0, 40.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/Frame_(4).svg',
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Text(
                          'Today\'s Entry',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Merriweather',
                                    color: Color(0xFF444444),
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE9F2FF),
                            borderRadius: BorderRadius.circular(20000.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 15.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'June 10th, 2023',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Merriweather',
                                        color: Color(0xFF34546C),
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                        child: Text(
                          'This is a space to dump thoughts about today\'s eating, food journey, emotions, and more',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Merriweather',
                                    color: Color(0xFF848484),
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    lineHeight: 1.6,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 0.4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xFFDEE2EB),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Form(
                            key: _model.formKey,
                            autovalidateMode: AutovalidateMode.disabled,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextFormField(
                                    controller: _model.diarytitleController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Merriweather',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      hintText: 'Untitled Note',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Merriweather',
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFD7D7D7),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFFACACAC),
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Merriweather',
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    validator: _model
                                        .diarytitleControllerValidator
                                        .asValidator(context),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: TextFormField(
                                      controller: _model.diaryentryController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Merriweather',
                                              fontSize: 12.0,
                                            ),
                                        hintText: 'Begin typing here...',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Merriweather',
                                              fontSize: 12.0,
                                            ),
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        focusedErrorBorder: InputBorder.none,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Merriweather',
                                            fontSize: 12.0,
                                          ),
                                      maxLines: 12,
                                      validator: _model
                                          .diaryentryControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.formKey.currentState == null ||
                                !_model.formKey.currentState!.validate()) {
                              return;
                            }
                            _model.nutritionalanalysis =
                                await NutritionalanalysisCall.call(
                              diaryentry: functions.replaceLineBreaks(
                                  _model.diaryentryController.text),
                            );
                            _model.feedbackanalysis =
                                await FeedbackanalysisCopyCall.call(
                              diaryentry: functions.replaceLineBreaks(
                                  _model.diaryentryController.text),
                            );

                            await DiaryEntriesRecord.collection
                                .doc()
                                .set(createDiaryEntriesRecordData(
                                  rawTextEntry:
                                      _model.diaryentryController.text,
                                  aiNutritionalAnalysis: NutritionalanalysisCall
                                      .nutritionalanalysis(
                                    (_model.nutritionalanalysis?.jsonBody ??
                                        ''),
                                  ).toString(),
                                  aiFeedbackAnalysis:
                                      FeedbackanalysisCopyCall.feedbackanalysis(
                                    (_model.feedbackanalysis?.jsonBody ?? ''),
                                  ).toString(),
                                  user: currentUserReference,
                                  date: getCurrentTimestamp,
                                  title: _model.diarytitleController.text,
                                ));

                            context.pushNamed('DiaryEntries');

                            setState(() {});
                          },
                          text: 'Save',
                          icon: Icon(
                            Icons.add_sharp,
                            size: 20.0,
                          ),
                          options: FFButtonOptions(
                            width: 140.0,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0x00FFFFFF),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Merriweather',
                                  color: Color(0xFF686868),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Color(0xFFC6C6C6),
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
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
    );
  }
}
