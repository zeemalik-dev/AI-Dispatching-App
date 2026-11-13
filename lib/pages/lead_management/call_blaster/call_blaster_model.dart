import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/comp/comp_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import 'dart:ui';
import 'call_blaster_widget.dart' show CallBlasterWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class CallBlasterModel extends FlutterFlowModel<CallBlasterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for topBar component.
  late TopBarModel topBarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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
    tabBarController?.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    compModel.dispose();
  }
}
