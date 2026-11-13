import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "status" field.
  JobStatus? _status;
  JobStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "callSuccess" field.
  int? _callSuccess;
  int get callSuccess => _callSuccess ?? 0;
  bool hasCallSuccess() => _callSuccess != null;

  // "requestedTime" field.
  DateTime? _requestedTime;
  DateTime? get requestedTime => _requestedTime;
  bool hasRequestedTime() => _requestedTime != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "priotity" field.
  Priorty? _priotity;
  Priorty? get priotity => _priotity;
  bool hasPriotity() => _priotity != null;

  // "tecnicianName" field.
  String? _tecnicianName;
  String get tecnicianName => _tecnicianName ?? '';
  bool hasTecnicianName() => _tecnicianName != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "technician" field.
  DocumentReference? _technician;
  DocumentReference? get technician => _technician;
  bool hasTechnician() => _technician != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _userName = snapshotData['userName'] as String?;
    _address = snapshotData['address'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _status = snapshotData['status'] is JobStatus
        ? snapshotData['status']
        : deserializeEnum<JobStatus>(snapshotData['status']);
    _callSuccess = castToType<int>(snapshotData['callSuccess']);
    _requestedTime = snapshotData['requestedTime'] as DateTime?;
    _amount = castToType<int>(snapshotData['amount']);
    _priotity = snapshotData['priotity'] is Priorty
        ? snapshotData['priotity']
        : deserializeEnum<Priorty>(snapshotData['priotity']);
    _tecnicianName = snapshotData['tecnicianName'] as String?;
    _title = snapshotData['title'] as String?;
    _technician = snapshotData['technician'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  String? description,
  String? userName,
  String? address,
  String? userEmail,
  JobStatus? status,
  int? callSuccess,
  DateTime? requestedTime,
  int? amount,
  Priorty? priotity,
  String? tecnicianName,
  String? title,
  DocumentReference? technician,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'userName': userName,
      'address': address,
      'userEmail': userEmail,
      'status': status,
      'callSuccess': callSuccess,
      'requestedTime': requestedTime,
      'amount': amount,
      'priotity': priotity,
      'tecnicianName': tecnicianName,
      'title': title,
      'technician': technician,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.userName == e2?.userName &&
        e1?.address == e2?.address &&
        e1?.userEmail == e2?.userEmail &&
        e1?.status == e2?.status &&
        e1?.callSuccess == e2?.callSuccess &&
        e1?.requestedTime == e2?.requestedTime &&
        e1?.amount == e2?.amount &&
        e1?.priotity == e2?.priotity &&
        e1?.tecnicianName == e2?.tecnicianName &&
        e1?.title == e2?.title &&
        e1?.technician == e2?.technician;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.description,
        e?.userName,
        e?.address,
        e?.userEmail,
        e?.status,
        e?.callSuccess,
        e?.requestedTime,
        e?.amount,
        e?.priotity,
        e?.tecnicianName,
        e?.title,
        e?.technician
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
