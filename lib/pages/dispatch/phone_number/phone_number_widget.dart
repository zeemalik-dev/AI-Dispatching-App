import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/buy_number_component/buy_number_component_widget.dart';
import '/pages/comp/comp_widget.dart';
import '/pages/edit_number/edit_number_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'phone_number_model.dart';
export 'phone_number_model.dart';

class PhoneNumberWidget extends StatefulWidget {
  const PhoneNumberWidget({super.key});

  static String routeName = 'PhoneNumber';
  static String routePath = '/phoneNumber';

  @override
  State<PhoneNumberWidget> createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  late PhoneNumberModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhoneNumberModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    wrapWithModel(
                      model: _model.navbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavbarWidget(),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.topBarModel,
                              updateCallback: () => safeSetState(() {}),
                              child: TopBarWidget(
                                bar: 'Phone Number',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  40.0, 40.0, 40.0, 26.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(),
                                    child: Wrap(
                                      spacing: 0.0,
                                      runSpacing: 10.0,
                                      alignment: WrapAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Phone Numbers',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 4.0, 0.0, 0.0),
                                              child: Text(
                                                'Welcome! Here You will buy your own numbers',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Builder(
                                          builder: (context) => FFButtonWidget(
                                            onPressed: () async {
                                              await showDialog(
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        FocusScope.of(
                                                                dialogContext)
                                                            .unfocus();
                                                        FocusManager.instance
                                                            .primaryFocus
                                                            ?.unfocus();
                                                      },
                                                      child:
                                                          BuyNumberComponentWidget(),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                            text: 'Add New',
                                            options: FFButtonOptions(
                                              width: 118.0,
                                              height: 56.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                        ),
                                        child: Builder(
                                          builder: (context) {
                                            if ((currentUserDocument
                                                        ?.phoneNumbers
                                                        ?.toList() ??
                                                    [])
                                                .isNotEmpty) {
                                              return Padding(
                                                padding: EdgeInsets.all(15.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Available Numbers',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Inter Tight',
                                                              fontSize: 26.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Builder(
                                                              builder:
                                                                  (context) {
                                                                final numData =
                                                                    (currentUserDocument?.phoneNumbers?.toList() ??
                                                                            [])
                                                                        .toList();

                                                                return Wrap(
                                                                  spacing: 15.0,
                                                                  runSpacing:
                                                                      15.0,
                                                                  alignment:
                                                                      WrapAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      WrapCrossAlignment
                                                                          .start,
                                                                  direction: Axis
                                                                      .horizontal,
                                                                  runAlignment:
                                                                      WrapAlignment
                                                                          .spaceEvenly,
                                                                  verticalDirection:
                                                                      VerticalDirection
                                                                          .down,
                                                                  clipBehavior:
                                                                      Clip.none,
                                                                  children: List
                                                                      .generate(
                                                                          numData
                                                                              .length,
                                                                          (numDataIndex) {
                                                                    final numDataItem =
                                                                        numData[
                                                                            numDataIndex];
                                                                    return Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          2.0,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.sizeOf(context).width *
                                                                            0.2,
                                                                        constraints:
                                                                            BoxConstraints(
                                                                          minWidth:
                                                                              310.0,
                                                                        ),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              EdgeInsets.all(10.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            children:
                                                                                [
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      functions.returnTwoText('Number', numDataItem.phoneNumber),
                                                                                      'Number : abcd',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                          fontFamily: 'Inter Tight',
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      functions.returnTwoText('Assistant ID', numDataItem.id),
                                                                                      'Assistant ID: 1356545',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                          fontFamily: 'Inter Tight',
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 15.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    icon: FaIcon(
                                                                                      FontAwesomeIcons.trashAlt,
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      size: 20.0,
                                                                                    ),
                                                                                    showLoadingIndicator: true,
                                                                                    onPressed: () async {
                                                                                      _model.apiResult7or = await VapiGroup.deletePhoneCall.call(
                                                                                        id: numDataItem.id,
                                                                                      );

                                                                                      if ((_model.apiResult7or?.succeeded ?? true)) {
                                                                                        await currentUserReference!.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'phoneNumbers': FieldValue.arrayRemove([
                                                                                                getPhoneNumberFirestoreData(
                                                                                                  updatePhoneNumberStruct(
                                                                                                    numDataItem,
                                                                                                    clearUnsetFields: false,
                                                                                                  ),
                                                                                                  true,
                                                                                                )
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        ScaffoldMessenger.of(context).showSnackBar(
                                                                                          SnackBar(
                                                                                            content: Text(
                                                                                              'Phone Number deleted successfully',
                                                                                              style: TextStyle(
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                            ),
                                                                                            duration: Duration(milliseconds: 4000),
                                                                                            backgroundColor: Color(0xFF45A671),
                                                                                          ),
                                                                                        );
                                                                                      } else {
                                                                                        if (getJsonField(
                                                                                              (_model.apiResult7or?.jsonBody ?? ''),
                                                                                              r'''$.message''',
                                                                                            ) ==
                                                                                            functions.convertJsontoString('Not Found')) {
                                                                                          await currentUserReference!.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'phoneNumbers': FieldValue.arrayRemove([
                                                                                                  getPhoneNumberFirestoreData(
                                                                                                    updatePhoneNumberStruct(
                                                                                                      numDataItem,
                                                                                                      clearUnsetFields: false,
                                                                                                    ),
                                                                                                    true,
                                                                                                  )
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Phone Number deleted successfully',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              duration: Duration(milliseconds: 4000),
                                                                                              backgroundColor: Color(0xFF45A671),
                                                                                            ),
                                                                                          );
                                                                                        } else {
                                                                                          ScaffoldMessenger.of(context).showSnackBar(
                                                                                            SnackBar(
                                                                                              content: Text(
                                                                                                'Oops SOme error eoccured',
                                                                                                style: TextStyle(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              duration: Duration(milliseconds: 4000),
                                                                                              backgroundColor: Color(0xFFBB6E7B),
                                                                                            ),
                                                                                          );
                                                                                        }
                                                                                      }

                                                                                      safeSetState(() {});
                                                                                    },
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(0.0, 0.0),
                                                                                    child: Builder(
                                                                                      builder: (context) => FFButtonWidget(
                                                                                        onPressed: () async {
                                                                                          await showDialog(
                                                                                            context: context,
                                                                                            builder: (dialogContext) {
                                                                                              return Dialog(
                                                                                                elevation: 0,
                                                                                                insetPadding: EdgeInsets.zero,
                                                                                                backgroundColor: Colors.transparent,
                                                                                                alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                                                child: GestureDetector(
                                                                                                  onTap: () {
                                                                                                    FocusScope.of(dialogContext).unfocus();
                                                                                                    FocusManager.instance.primaryFocus?.unfocus();
                                                                                                  },
                                                                                                  child: EditNumberWidget(
                                                                                                    phonenumber: numDataItem,
                                                                                                    index: numDataIndex,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                            },
                                                                                          );
                                                                                        },
                                                                                        text: 'Edit',
                                                                                        icon: FaIcon(
                                                                                          FontAwesomeIcons.edit,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 15.0,
                                                                                        ),
                                                                                        options: FFButtonOptions(
                                                                                          width: 90.0,
                                                                                          height: 40.0,
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                                                                                          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                                fontFamily: 'Inter Tight',
                                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                                fontSize: 15.0,
                                                                                                letterSpacing: 0.0,
                                                                                              ),
                                                                                          elevation: 3.0,
                                                                                          borderSide: BorderSide(
                                                                                            color: Colors.transparent,
                                                                                            width: 1.0,
                                                                                          ),
                                                                                          borderRadius: BorderRadius.circular(8.0),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ].divide(SizedBox(height: 5.0)),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }),
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 15.0)),
                                                ),
                                              );
                                            } else {
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'No Phone Number\nAvailable',
                                                    textAlign: TextAlign.center,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              'Inter Tight',
                                                          fontSize: 26.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ],
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(height: 25.0)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              wrapWithModel(
                model: _model.compModel,
                updateCallback: () => safeSetState(() {}),
                child: CompWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
