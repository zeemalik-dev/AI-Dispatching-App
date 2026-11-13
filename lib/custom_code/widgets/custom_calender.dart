// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomCalender extends StatefulWidget {
  const CustomCalender({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  final int startHour = 0;
  final int endHour = 24;
  double get pixelsPerHour =>
      MediaQuery.of(context).size.width / (endHour - startHour);

  double get timelineWidth => (endHour - startHour) * pixelsPerHour;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
        ),
      ),
      child: StreamBuilder<List<TechnicianRecord>>(
        stream: queryTechnicianRecord(
          queryBuilder: (tech) => tech.where(
            'status',
            isEqualTo: UserStatus.active.serialize(),
          ),
        ),
        builder: (context, techSnapshot) {
          if (!techSnapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final technicians = techSnapshot.data!;
          if (technicians.isEmpty) {
            return const Center(child: Text('No technicians found.'));
          }

          return StreamBuilder<List<JobsRecord>>(
            stream: queryJobsRecord(),
            builder: (context, jobSnapshot) {
              if (!jobSnapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final allJobs = jobSnapshot.data!;

              return Row(
                children: [
                  // Fixed technician column
                  SizedBox(
                    width: 120,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          color: Colors.grey.shade200,
                        ),
                        Expanded(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: technicians.length,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 80,
                                color: Colors.grey.shade200,
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  technicians[index].name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Scrollable timeline
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: timelineWidth,
                        child: Column(
                          children: [
                            _buildTimelineHeader(),
                            Expanded(
                              child: ListView.builder(
                                itemCount: technicians.length,
                                itemBuilder: (context, index) {
                                  return _buildTechnicianRow(
                                    technicians[index],
                                    allJobs
                                        .where((job) =>
                                            job.technician ==
                                            technicians[index].reference)
                                        .toList(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildTimelineHeader() {
    final hourCount = endHour - startHour;
    return SizedBox(
      height: 40,
      child: Row(
        children: List.generate(hourCount, (i) {
          return Container(
            width: pixelsPerHour,
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              '${startHour + i}:00',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildTechnicianRow(
      TechnicianRecord technician, List<JobsRecord> jobs) {
    final hourCount = endHour - startHour;
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Row(
            children: List.generate(hourCount, (i) {
              return Container(
                width: pixelsPerHour,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              );
            }),
          ),
          for (final job in jobs) _buildJobBlock(job),
        ],
      ),
    );
  }

  Widget _buildJobBlock(JobsRecord job) {
    final startTime = job.requestedTime ?? DateTime.now();
    final endTime = startTime.add(const Duration(hours: 2));
    final startOffsetHours =
        startTime.hour + (startTime.minute / 60) - startHour;
    final durationHours = endTime.difference(startTime).inMinutes / 60.0;
    final leftPx = startOffsetHours * pixelsPerHour;
    final widthPx = durationHours * pixelsPerHour;
    if (endTime.hour < startHour || startTime.hour >= endHour) {
      return const SizedBox();
    }
    return Positioned(
      left: leftPx,
      top: 5,
      width: widthPx,
      height: 70,
      child: Container(
        decoration: BoxDecoration(
          color: _statusToColor(job.status),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              job.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              job.status?.name ?? '',
              style: const TextStyle(color: Colors.white70, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }

  Color _statusToColor(JobStatus? status) {
    switch (status) {
      case JobStatus.Completed:
        return Colors.green;
      case JobStatus.Inprogress:
        return Colors.orange;
      case JobStatus.Pending:
        return Colors.blue;
      case JobStatus.Unassigned:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
