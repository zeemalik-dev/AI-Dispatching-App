import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/comp/comp_widget.dart';
import '/pages/dispatch/call_details/call_details_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'list_calls_widget.dart' show ListCallsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class ListCallsModel extends FlutterFlowModel<ListCallsWidget> {
  ///  Local state fields for this page.

  List<dynamic> listCalls = [];
  void addToListCalls(dynamic item) => listCalls.add(item);
  void removeFromListCalls(dynamic item) => listCalls.remove(item);
  void removeAtIndexFromListCalls(int index) => listCalls.removeAt(index);
  void insertAtIndexInListCalls(int index, dynamic item) =>
      listCalls.insert(index, item);
  void updateListCallsAtIndex(int index, Function(dynamic) updateFn) =>
      listCalls[index] = updateFn(listCalls[index]);

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for topBar component.
  late TopBarModel topBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for StatusDropDown widget.
  String? statusDropDownValue;
  FormFieldController<String>? statusDropDownValueController;
  // State field(s) for assistantDropDown widget.
  String? assistantDropDownValue;
  FormFieldController<String>? assistantDropDownValueController;
  // Stores action output result for [Backend Call - API (List Phone Calls)] action in assistantDropDown widget.
  ApiCallResponse? apiResultzuw;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<dynamic>();
  // Model for comp component.
  late CompModel compModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    topBarModel = createModel(context, () => TopBarModel());
    compModel = createModel(context, () => CompModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    topBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
    compModel.dispose();
  }
}
