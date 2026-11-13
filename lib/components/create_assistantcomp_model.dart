import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'create_assistantcomp_widget.dart' show CreateAssistantcompWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAssistantcompModel
    extends FlutterFlowModel<CreateAssistantcompWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for firstmessage widget.
  FocusNode? firstmessageFocusNode;
  TextEditingController? firstmessageTextController;
  String? Function(BuildContext, String?)? firstmessageTextControllerValidator;
  String? _firstmessageTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for systemprompt widget.
  FocusNode? systempromptFocusNode;
  TextEditingController? systempromptTextController;
  String? Function(BuildContext, String?)? systempromptTextControllerValidator;
  String? _systempromptTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (createAssitant)] action in SignInBtn widget.
  ApiCallResponse? apiResultlh7;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    firstmessageTextControllerValidator = _firstmessageTextControllerValidator;
    systempromptTextControllerValidator = _systempromptTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    firstmessageFocusNode?.dispose();
    firstmessageTextController?.dispose();

    systempromptFocusNode?.dispose();
    systempromptTextController?.dispose();
  }
}
