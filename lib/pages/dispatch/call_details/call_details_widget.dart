import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'call_details_model.dart';
export 'call_details_model.dart';

class CallDetailsWidget extends StatefulWidget {
  const CallDetailsWidget({
    super.key,
    required this.callDetails,
  });

  final dynamic callDetails;

  @override
  State<CallDetailsWidget> createState() => _CallDetailsWidgetState();
}

class _CallDetailsWidgetState extends State<CallDetailsWidget> {
  late CallDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CallDetailsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.3,
        height: double.infinity,
        constraints: BoxConstraints(
          minWidth: 300.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Call Details',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              FlutterFlowAudioPlayer(
                audio: Audio.network(
                  getJsonField(
                    widget!.callDetails,
                    r'''$.recordingUrl''',
                  ).toString(),
                  metas: Metas(
                    title: 'Recording',
                  ),
                ),
                titleTextStyle:
                    FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Inter Tight',
                          letterSpacing: 0.0,
                        ),
                playbackDurationTextStyle:
                    FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                playbackButtonColor: FlutterFlowTheme.of(context).primary,
                activeTrackColor: FlutterFlowTheme.of(context).alternate,
                elevation: 4.0,
                playInBackground: PlayInBackground.disabledPause,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transcript',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            fontSize: 20.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          final messages = getJsonField(
                            widget!.callDetails,
                            r'''$.messages''',
                          ).toList();

                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(messages.length,
                                  (messagesIndex) {
                                final messagesItem = messages[messagesIndex];
                                return Builder(
                                  builder: (context) {
                                    if (functions.checkRole(getJsonField(
                                      messagesItem,
                                      r'''$.role''',
                                    ).toString())) {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'User',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Text(
                                              getJsonField(
                                                messagesItem,
                                                r'''$.message''',
                                              ).toString(),
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {
                                      return Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Agent',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Inter',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            Text(
                                              getJsonField(
                                                messagesItem,
                                                r'''$.message''',
                                              ).toString(),
                                              textAlign: TextAlign.end,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                );
                              }).divide(SizedBox(height: 7.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  ].divide(SizedBox(height: 10.0)),
                ),
              ),
            ].divide(SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
