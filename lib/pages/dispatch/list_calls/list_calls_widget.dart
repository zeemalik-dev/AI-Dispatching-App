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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'list_calls_model.dart';
export 'list_calls_model.dart';

class ListCallsWidget extends StatefulWidget {
  const ListCallsWidget({super.key});

  static String routeName = 'ListCalls';
  static String routePath = '/listCalls';

  @override
  State<ListCallsWidget> createState() => _ListCallsWidgetState();
}

class _ListCallsWidgetState extends State<ListCallsWidget>
    with TickerProviderStateMixin {
  late ListCallsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListCallsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'progressBarOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.topBarModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TopBarWidget(
                              bar: 'Calls',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                40.0, 40.0, 40.0, 26.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Calls',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          'Manage and track all calls',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Inter',
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4.0)),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'New Call',
                                        icon: Icon(
                                          Icons.settings_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 16.0,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 16.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Inter Tight',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 0.0,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ],
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 80.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 15.0, 0.0),
                                            child: Container(
                                              width: 400.0,
                                              child: TextFormField(
                                                controller:
                                                    _model.textController,
                                                focusNode:
                                                    _model.textFieldFocusNode,
                                                onChanged: (_) =>
                                                    EasyDebounce.debounce(
                                                  '_model.textController',
                                                  Duration(milliseconds: 200),
                                                  () => safeSetState(() {}),
                                                ),
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  hintText: 'Search by id',
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor7,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .customColor6,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 10.0,
                                                              0.0, 10.0),
                                                  prefixIcon: Icon(
                                                    Icons.search,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    size: 24.0,
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .textControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .statusDropDownValueController ??=
                                                FormFieldController<String>(
                                              _model.statusDropDownValue ??= '',
                                            ),
                                            options: List<String>.from([
                                              'queued',
                                              'ringing',
                                              'in-progress',
                                              'forwarding',
                                              'ended',
                                              ''
                                            ]),
                                            optionLabels: [
                                              'Queued',
                                              'Ringing',
                                              'In Progress',
                                              'Forwarding',
                                              'Ended',
                                              'Status'
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model
                                                    .statusDropDownValue = val),
                                            width: 250.0,
                                            height: 40.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Inter',
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText: 'Status',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .customColor6,
                                            borderWidth: 2.0,
                                            borderRadius: 12.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) =>
                                                FlutterFlowDropDown<String>(
                                              controller: _model
                                                      .assistantDropDownValueController ??=
                                                  FormFieldController<String>(
                                                _model.assistantDropDownValue ??=
                                                    '',
                                              ),
                                              options: List<String>.from(
                                                  (currentUserDocument
                                                              ?.assistants
                                                              ?.toList() ??
                                                          [])
                                                      .map((e) => e.id)
                                                      .toList()),
                                              optionLabels: (currentUserDocument
                                                          ?.assistants
                                                          ?.toList() ??
                                                      [])
                                                  .map((e) => e.name)
                                                  .toList(),
                                              onChanged: (val) async {
                                                safeSetState(() => _model
                                                        .assistantDropDownValue =
                                                    val);
                                                var _shouldSetState = false;
                                                _model.isLoading = true;
                                                safeSetState(() {});
                                                _model.apiResultzuw =
                                                    await VapiGroup
                                                        .listPhoneCallsCall
                                                        .call(
                                                  assistantId: _model
                                                      .assistantDropDownValue,
                                                );

                                                _shouldSetState = true;
                                                if ((_model.apiResultzuw
                                                            ?.statusCode ??
                                                        200) ==
                                                    200) {
                                                  _model.listCalls = (_model
                                                              .apiResultzuw
                                                              ?.jsonBody ??
                                                          '')
                                                      .toList()
                                                      .cast<dynamic>();
                                                  _model.isLoading = false;
                                                  safeSetState(() {});
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                } else {
                                                  _model.isLoading = false;
                                                  safeSetState(() {});
                                                  if (_shouldSetState)
                                                    safeSetState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  safeSetState(() {});
                                              },
                                              width: 250.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Inter',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                              hintText: 'Assistant',
                                              icon: Icon(
                                                Icons
                                                    .keyboard_arrow_down_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 24.0,
                                              ),
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              elevation: 2.0,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor6,
                                              borderWidth: 2.0,
                                              borderRadius: 12.0,
                                              margin: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              hidesUnderline: true,
                                              isOverButton: false,
                                              isSearchable: false,
                                              isMultiSelect: false,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Builder(
                                    builder: (context) {
                                      if (_model.listCalls.isNotEmpty) {
                                        return Builder(
                                          builder: (context) {
                                            final data = _model.listCalls
                                                .where((e) => () {
                                                      if ((_model.textController.text ==
                                                                  null ||
                                                              _model.textController
                                                                      .text ==
                                                                  '') &&
                                                          (_model.statusDropDownValue ==
                                                                  null ||
                                                              _model.statusDropDownValue ==
                                                                  '')) {
                                                        return true;
                                                      } else if ((_model
                                                                      .textController
                                                                      .text !=
                                                                  null &&
                                                              _model.textController
                                                                      .text !=
                                                                  '') &&
                                                          (_model.statusDropDownValue ==
                                                                  null ||
                                                              _model.statusDropDownValue ==
                                                                  '')) {
                                                        return functions
                                                            .filterSearch(
                                                                _model
                                                                    .textController
                                                                    .text,
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.id''',
                                                                ).toString())!;
                                                      } else if ((_model
                                                                      .textController
                                                                      .text ==
                                                                  null ||
                                                              _model.textController
                                                                      .text ==
                                                                  '') &&
                                                          (_model.statusDropDownValue !=
                                                                  null &&
                                                              _model.statusDropDownValue != '')) {
                                                        return ((String var1,
                                                                String var2) {
                                                          return (var1 == var2)
                                                              ? true
                                                              : false;
                                                        }(
                                                            getJsonField(
                                                              e,
                                                              r'''$.status''',
                                                            ).toString(),
                                                            _model
                                                                .statusDropDownValue!));
                                                      } else {
                                                        return (((String var1,
                                                                    String
                                                                        var2) {
                                                              return (var1 ==
                                                                      var2)
                                                                  ? true
                                                                  : false;
                                                            }(
                                                                getJsonField(
                                                                  e,
                                                                  r'''$.status''',
                                                                ).toString(),
                                                                _model
                                                                    .statusDropDownValue!)) &&
                                                            functions
                                                                .filterSearch(
                                                                    _model
                                                                        .textController
                                                                        .text,
                                                                    getJsonField(
                                                                      e,
                                                                      r'''$.id''',
                                                                    ).toString())!);
                                                      }
                                                    }())
                                                .toList();

                                            return FlutterFlowDataTable<
                                                dynamic>(
                                              controller: _model
                                                  .paginatedDataTableController,
                                              data: data,
                                              columnsBuilder: (onSortChanged) =>
                                                  [
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Call ID',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor7,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 200.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Date & Time',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor7,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 300.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Duration',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor7,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 150.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Type',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor7,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 130.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Status',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor7,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 150.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Cost',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .customColor7,
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 150.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'End Reasson',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 250.0,
                                                ),
                                                DataColumn2(
                                                  label: DefaultTextStyle.merge(
                                                    softWrap: true,
                                                    child: Text(
                                                      'Actions',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelLarge
                                                          .override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  fixedWidth: 200.0,
                                                ),
                                              ],
                                              dataRowBuilder: (dataItem,
                                                      dataIndex,
                                                      selected,
                                                      onSelectChanged) =>
                                                  DataRow(
                                                color:
                                                    MaterialStateProperty.all(
                                                  dataIndex % 2 == 0
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                ),
                                                cells: [
                                                  Text(
                                                    getJsonField(
                                                      dataItem,
                                                      r'''$.id''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Icon(
                                                          Icons
                                                              .calendar_today_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor36,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              functions.formatTime(
                                                                  getJsonField(
                                                                dataItem,
                                                                r'''$.createdAt''',
                                                              ).toString()),
                                                              'Jan 24, 2024 9:30 AM',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .clock,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor36,
                                                          size: 16.0,
                                                        ),
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            functions.calculateDuration(
                                                                getJsonField(
                                                                  dataItem,
                                                                  r'''$.startedAt''',
                                                                ).toString(),
                                                                getJsonField(
                                                                  dataItem,
                                                                  r'''$.endedAt''',
                                                                ).toString()),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Inter',
                                                                  fontSize:
                                                                      12.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 12.0)),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        dataItem,
                                                        r'''$.type''',
                                                      )?.toString(),
                                                      'incoming',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor7,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Container(
                                                    width: 90.0,
                                                    height: 30.0,
                                                    decoration: BoxDecoration(
                                                      color: () {
                                                        if ((String var1,
                                                                String var2) {
                                                          return var1 == var2
                                                              ? true
                                                              : false;
                                                        }(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dataItem,
                                                                r'''$.status''',
                                                              )?.toString(),
                                                              'completed',
                                                            ),
                                                            'queued')) {
                                                          return Color(
                                                              0xFFFFF4D1);
                                                        } else if ((String var1,
                                                                String var2) {
                                                          return var1 == var2
                                                              ? true
                                                              : false;
                                                        }(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dataItem,
                                                                r'''$.status''',
                                                              )?.toString(),
                                                              'completed',
                                                            ),
                                                            'ringing')) {
                                                          return Color(
                                                              0xFFFFE0B2);
                                                        } else if ((String var1,
                                                                String var2) {
                                                          return var1 == var2
                                                              ? true
                                                              : false;
                                                        }(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dataItem,
                                                                r'''$.status''',
                                                              )?.toString(),
                                                              'completed',
                                                            ),
                                                            'in-progress')) {
                                                          return Color(
                                                              0xFFD0F0D0);
                                                        } else if ((String var1,
                                                                String var2) {
                                                          return var1 == var2
                                                              ? true
                                                              : false;
                                                        }(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                dataItem,
                                                                r'''$.status''',
                                                              )?.toString(),
                                                              'completed',
                                                            ),
                                                            'forwarding')) {
                                                          return Color(
                                                              0xFFE3C6E8);
                                                        } else {
                                                          return Color(
                                                              0xFFF8D7DA);
                                                        }
                                                      }(),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              889.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                      ),
                                                    ),
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          getJsonField(
                                                            dataItem,
                                                            r'''$.status''',
                                                          )?.toString(),
                                                          'completed',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Inter',
                                                              color: () {
                                                                if ((String var1,
                                                                        String
                                                                            var2) {
                                                                  return var1 ==
                                                                          var2
                                                                      ? true
                                                                      : false;
                                                                }(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        dataItem,
                                                                        r'''$.status''',
                                                                      )?.toString(),
                                                                      'completed',
                                                                    ),
                                                                    'queued')) {
                                                                  return Color(
                                                                      0xFFFFC107);
                                                                } else if ((String
                                                                            var1,
                                                                        String
                                                                            var2) {
                                                                  return var1 ==
                                                                          var2
                                                                      ? true
                                                                      : false;
                                                                }(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        dataItem,
                                                                        r'''$.status''',
                                                                      )?.toString(),
                                                                      'completed',
                                                                    ),
                                                                    'ringing')) {
                                                                  return Colors
                                                                      .orange;
                                                                } else if ((String
                                                                            var1,
                                                                        String
                                                                            var2) {
                                                                  return var1 ==
                                                                          var2
                                                                      ? true
                                                                      : false;
                                                                }(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        dataItem,
                                                                        r'''$.status''',
                                                                      )?.toString(),
                                                                      'completed',
                                                                    ),
                                                                    'in-progress')) {
                                                                  return Colors
                                                                      .green;
                                                                } else if ((String
                                                                            var1,
                                                                        String
                                                                            var2) {
                                                                  return var1 ==
                                                                          var2
                                                                      ? true
                                                                      : false;
                                                                }(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      getJsonField(
                                                                        dataItem,
                                                                        r'''$.status''',
                                                                      )?.toString(),
                                                                      'completed',
                                                                    ),
                                                                    'forwarding')) {
                                                                  return Colors
                                                                      .purple;
                                                                } else {
                                                                  return Colors
                                                                      .red;
                                                                }
                                                              }(),
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    '\$${getJsonField(
                                                      dataItem,
                                                      r'''$.cost''',
                                                    ).toString()}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .customColor7,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        width: 90.0,
                                                        height: 35.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      889.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                dataItem,
                                                                r'''$.endedReason''',
                                                              ).toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Inter',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .customColor7,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .alternate,
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (dialogContext) {
                                                                    return Dialog(
                                                                      elevation:
                                                                          0,
                                                                      insetPadding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              1.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      child:
                                                                          GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          FocusScope.of(dialogContext)
                                                                              .unfocus();
                                                                          FocusManager
                                                                              .instance
                                                                              .primaryFocus
                                                                              ?.unfocus();
                                                                        },
                                                                        child:
                                                                            CallDetailsWidget(
                                                                          callDetails:
                                                                              dataItem,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .fileAlt,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 15.0)),
                                                  ),
                                                ]
                                                    .map((c) => DataCell(c))
                                                    .toList(),
                                              ),
                                              paginated: true,
                                              selectable: false,
                                              hidePaginator: false,
                                              showFirstLastButtons: false,
                                              width: double.infinity,
                                              minWidth: 5.0,
                                              headingRowHeight: 90.0,
                                              dataRowHeight: 88.0,
                                              columnSpacing: 20.0,
                                              headingRowColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              addHorizontalDivider: true,
                                              addTopAndBottomDivider: true,
                                              hideDefaultHorizontalDivider:
                                                  true,
                                              horizontalDividerColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              horizontalDividerThickness: 1.0,
                                              addVerticalDivider: false,
                                            );
                                          },
                                        );
                                      } else if (_model.isLoading) {
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            CircularPercentIndicator(
                                              percent: 0.75,
                                              radius: 40.0,
                                              lineWidth: 6.0,
                                              animation: true,
                                              animateFromLastPercent: true,
                                              progressColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .accent4,
                                            ).animateOnPageLoad(animationsMap[
                                                'progressBarOnPageLoadAnimation']!),
                                          ],
                                        );
                                      } else {
                                        return Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'No Data Available',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily:
                                                            'Inter Tight',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ],
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(height: 35.0)),
                            ),
                          ),
                        ],
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
