import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/empty_wight_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/comp/comp_widget.dart';
import '/pages/navbar/navbar_widget.dart';
import '/schedule_jobs/assign_job/assign_job_widget.dart';
import 'dart:ui';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_model.dart';
export 'schedule_model.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({super.key});

  static String routeName = 'Schedule';
  static String routePath = '/schedule';

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget> {
  late ScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleModel());

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
                  children: [
                    wrapWithModel(
                      model: _model.navbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: NavbarWidget(),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 40.0, 40.0, 26.0),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'New Appoiments',
                                    icon: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 26.0,
                                    ),
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 16.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Inter Tight',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pending jobs',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Inter',
                                          fontSize: 23.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  StreamBuilder<List<JobsRecord>>(
                                    stream: queryJobsRecord(
                                      queryBuilder: (jobsRecord) => jobsRecord
                                          .where(
                                        'status',
                                        whereNotIn: [
                                          JobStatus.Unassigned.serialize(),
                                          JobStatus.Completed.serialize()
                                        ],
                                      ).orderBy('requestedTime',
                                              descending: true),
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<JobsRecord> rowJobsRecordList =
                                          snapshot.data!;
                                      if (rowJobsRecordList.isEmpty) {
                                        return EmptyWightWidget();
                                      }

                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              rowJobsRecordList.length,
                                              (rowIndex) {
                                            final rowJobsRecord =
                                                rowJobsRecordList[rowIndex];
                                            return Builder(
                                              builder: (context) => InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
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
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child:
                                                              AssignJobWidget(
                                                            job: rowJobsRecord,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                                child: Container(
                                                  height: 100.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(14.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          rowJobsRecord.title,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        Text(
                                                          dateTimeFormat(
                                                              "d/M/y",
                                                              rowJobsRecord
                                                                  .requestedTime!),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Inter',
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 7.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).divide(SizedBox(width: 12.0)),
                                        ),
                                      );
                                    },
                                  ),

                                  // Expanded(
                                  //   child:
                                  // Container(
                                  //   width: double.infinity,
                                  //   height: 300.0,
                                  //   child: custom_widgets.CustomCalender(
                                  //     width: double.infinity,
                                  //     height: 300.0,
                                  //   ),
                                  // ),
                                  // ),
                                  Container(
                                    width: double.infinity,
                                    height:
                                        300.0, // Set a specific height if needed
                                    child: custom_widgets.CustomCalender(
                                      width: double.infinity,
                                      // height: double.infinity, // Avoid setting height to infinity
                                    ),
                                  ),
                                ].divide(SizedBox(height: 15.0)),
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Expanded(
                                  child: Container(
                                    height: MediaQuery.sizeOf(context).height *
                                        0.63,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0.0),
                                              bottomRight: Radius.circular(0.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                            ),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Technicians',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Inter',
                                                          fontSize: 23.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<TechnicianRecord>>(
                                              stream: queryTechnicianRecord(
                                                queryBuilder:
                                                    (technicianRecord) =>
                                                        technicianRecord
                                                            .where(
                                                              'status',
                                                              isEqualTo: UserStatus
                                                                  .active
                                                                  .serialize(),
                                                            )
                                                            .orderBy(
                                                                'createDate',
                                                                descending:
                                                                    true),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<TechnicianRecord>
                                                    listViewTechnicianRecordList =
                                                    snapshot.data!;

                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewTechnicianRecordList
                                                          .length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 18.0),
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewTechnicianRecord =
                                                        listViewTechnicianRecordList[
                                                            listViewIndex];
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 150.0,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: StreamBuilder<
                                                              List<JobsRecord>>(
                                                            stream:
                                                                queryJobsRecord(
                                                              queryBuilder: (jobsRecord) =>
                                                                  jobsRecord
                                                                      .where(
                                                                        'technician',
                                                                        isEqualTo:
                                                                            listViewTechnicianRecord.reference,
                                                                      )
                                                                      .whereNotIn(
                                                                          'status',
                                                                          functions
                                                                              .returnUselessJobStatuses()
                                                                              ?.map((e) => e
                                                                                  .serialize())
                                                                              .toList())
                                                                      .orderBy(
                                                                          'requestedTime',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        CircularProgressIndicator(
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<
                                                                              Color>(
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<JobsRecord>
                                                                  cardJobsRecordList =
                                                                  snapshot
                                                                      .data!;

                                                              return Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 0.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          230.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(12.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children:
                                                                              [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: 12.0,
                                                                                  height: 12.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).customColor95,
                                                                                    shape: BoxShape.circle,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  listViewTechnicianRecord.name,
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Inter',
                                                                                        fontSize: 14.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ].divide(SizedBox(width: 8.0)),
                                                                            ),
                                                                            Container(
                                                                              width: 65.0,
                                                                              height: 25.0,
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(15.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                ),
                                                                              ),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  '${cardJobsRecordList.length.toString()} jobs',
                                                                                  style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                        fontFamily: 'Inter',
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ].divide(SizedBox(height: 9.0)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final jobs =
                                                                              cardJobsRecordList.toList();

                                                                          return SingleChildScrollView(
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: List.generate(jobs.length, (jobsIndex) {
                                                                                final jobsItem = jobs[jobsIndex];
                                                                                return Container(
                                                                                  height: 130.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                    borderRadius: BorderRadius.circular(12.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                    ),
                                                                                  ),
                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsets.all(14.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Text(
                                                                                          jobsItem.title,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                        Text(
                                                                                          dateTimeFormat("d/M h:mm a", jobsItem.requestedTime!),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Inter',
                                                                                                fontSize: 12.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        ),
                                                                                        Container(
                                                                                          width: 65.0,
                                                                                          height: 25.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: () {
                                                                                              if (jobsItem.status == JobStatus.Completed) {
                                                                                                return FlutterFlowTheme.of(context).customColor98;
                                                                                              } else if (jobsItem.status == JobStatus.Inprogress) {
                                                                                                return FlutterFlowTheme.of(context).customColor96;
                                                                                              } else if (jobsItem.status == JobStatus.Pending) {
                                                                                                return FlutterFlowTheme.of(context).customColor97;
                                                                                              } else {
                                                                                                return Color(0x00000000);
                                                                                              }
                                                                                            }(),
                                                                                            borderRadius: BorderRadius.circular(15.0),
                                                                                          ),
                                                                                          child: Align(
                                                                                            alignment: AlignmentDirectional(0.0, 0.0),
                                                                                            child: Text(
                                                                                              valueOrDefault<String>(
                                                                                                jobsItem.status?.name,
                                                                                                'none',
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelLarge.override(
                                                                                                    fontFamily: 'Inter',
                                                                                                    color: () {
                                                                                                      if (jobsItem.status == JobStatus.Completed) {
                                                                                                        return FlutterFlowTheme.of(context).jobSucces;
                                                                                                      } else if (jobsItem.status == JobStatus.Inprogress) {
                                                                                                        return FlutterFlowTheme.of(context).customColor99;
                                                                                                      } else if (jobsItem.status == JobStatus.Pending) {
                                                                                                        return FlutterFlowTheme.of(context).customColor100;
                                                                                                      } else {
                                                                                                        return FlutterFlowTheme.of(context).secondary;
                                                                                                      }
                                                                                                    }(),
                                                                                                    fontSize: 10.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w600,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(height: 7.0)),
                                                                                    ),
                                                                                  ),
                                                                                );
                                                                              }).divide(SizedBox(width: 12.0)),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          10.0)),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 6.0,
                                                          thickness: 2.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(height: 35.0)),
                          ),
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
