import '/components/edit_route_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comp/comp_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import 'dart:ui';
import 'call_route_widget.dart' show CallRouteWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CallRouteModel extends FlutterFlowModel<CallRouteWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for topBar component.
  late TopBarModel topBarModel;
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
    compModel.dispose();
  }
}
