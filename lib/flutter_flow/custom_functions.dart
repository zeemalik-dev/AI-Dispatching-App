import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

List<AssistantStruct> updateAssitant(
  List<AssistantStruct> oldAssistant,
  int index,
  AssistantStruct newAssistant,
) {
  oldAssistant[index] = newAssistant;
  return oldAssistant;
}

String returnTwoText(
  String text1,
  String text2,
) {
  return "$text1 : $text2";
}

List<PhoneNumberStruct> updatePhoneNumber(
  List<PhoneNumberStruct> oldPhoneNumbers,
  int index,
  PhoneNumberStruct newPhoneNumber,
) {
  oldPhoneNumbers[index] = newPhoneNumber;
  return oldPhoneNumbers;
}

dynamic convertJsontoString(String role) {
  return role;
}

bool? filterSearch(
  String? searchKeyword,
  String? searchItem,
) {
  return searchItem!.toLowerCase().contains(searchKeyword!.toLowerCase());
}

String? formatTime(String isoDateString) {
  // Parse the ISO 8601 string to a DateTime object
  DateTime dateTime = DateTime.parse(isoDateString);

  // Format the DateTime object to the desired format
  final DateFormat formatter = DateFormat('MMM dd, yyyy h:mm a');
  return formatter.format(dateTime);
}

String calculateDuration(
  String startTimeStr,
  String endTimeStr,
) {
// Parse the ISO 8601 strings into DateTime objects
  DateTime startTime = DateTime.parse(startTimeStr);
  DateTime endTime = DateTime.parse(endTimeStr);

  // Calculate the difference between the two times
  Duration duration = endTime.difference(startTime);

  // Get hours, minutes, and seconds from the duration
  int hours = duration.inHours;
  int minutes = (duration.inMinutes % 60);
  int seconds = (duration.inSeconds % 60);

  // Return the formatted duration as a string
  return '$hours:$minutes:$seconds';
}

bool checkRole(String? role) {
  return role == 'user' ? true : false;
}

List<String> returnEmptyList(List<String>? selected) {
  return selected ?? [];
}

DocumentReference? convertTechId(String? id) {
  return FirebaseFirestore.instance.collection('Technician').doc(id!);
}

bool? jobFilter(
  String? textfield,
  String? userName,
  String? phone,
) {
  return (userName!.toLowerCase().contains(textfield!.toLowerCase())) ||
      phone!.toLowerCase().contains(textfield!.toLowerCase());
}

List<JobStatus>? returnUselessJobStatuses() {
  return [JobStatus.Unassigned, JobStatus.Completed];
}

List<String> returnFiestSpetialization() {
  return ["HVAC"];
}

String createReminderMessage(
  String jobDescription,
  DateTime scheduledTime,
) {
// Format the date and time nicely
  String formattedDate = "${scheduledTime.day.toString().padLeft(2, '0')}-"
      "${scheduledTime.month.toString().padLeft(2, '0')}-"
      "${scheduledTime.year}";
  String formattedTime = "${scheduledTime.hour.toString().padLeft(2, '0')}:"
      "${scheduledTime.minute.toString().padLeft(2, '0')}";

  // Build the message
  return "📅 Reminder: You have a scheduled job - \"$jobDescription\" "
      "on $formattedDate at $formattedTime. Please be prepared. ✅";
}
