import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_wight_model.dart';
export 'empty_wight_model.dart';

class EmptyWightWidget extends StatefulWidget {
  const EmptyWightWidget({super.key});

  @override
  State<EmptyWightWidget> createState() => _EmptyWightWidgetState();
}

class _EmptyWightWidgetState extends State<EmptyWightWidget> {
  late EmptyWightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyWightModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      'No pending jobs yet.',
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            color: Color(0xFF787878),
            fontSize: 17.0,
            letterSpacing: 0.0,
            fontWeight: FontWeight.normal,
          ),
    );
  }
}
