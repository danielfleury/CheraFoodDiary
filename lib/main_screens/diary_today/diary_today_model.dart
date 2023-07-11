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

class DiaryTodayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for diarytitle widget.
  TextEditingController? diarytitleController;
  String? Function(BuildContext, String?)? diarytitleControllerValidator;
  String? _diarytitleControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for diaryentry widget.
  TextEditingController? diaryentryController;
  String? Function(BuildContext, String?)? diaryentryControllerValidator;
  String? _diaryentryControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (nutritionalanalysis)] action in Button widget.
  ApiCallResponse? nutritionalanalysis;
  // Stores action output result for [Backend Call - API (feedbackanalysis Copy)] action in Button widget.
  ApiCallResponse? feedbackanalysis;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    diarytitleControllerValidator = _diarytitleControllerValidator;
    diaryentryControllerValidator = _diaryentryControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    diarytitleController?.dispose();
    diaryentryController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
