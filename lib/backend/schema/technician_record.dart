import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TechnicianRecord extends FirestoreRecord {
  TechnicianRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "phoneNumber" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "speclization" field.
  List<String>? _speclization;
  List<String> get speclization => _speclization ?? const [];
  bool hasSpeclization() => _speclization != null;

  // "status" field.
  UserStatus? _status;
  UserStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "createDate" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  void _initializeFields() {
    _phoneNumber = castToType<int>(snapshotData['phoneNumber']);
    _email = snapshotData['email'] as String?;
    _name = snapshotData['name'] as String?;
    _speclization = getDataList(snapshotData['speclization']);
    _status = snapshotData['status'] is UserStatus
        ? snapshotData['status']
        : deserializeEnum<UserStatus>(snapshotData['status']);
    _createDate = snapshotData['createDate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Technician');

  static Stream<TechnicianRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TechnicianRecord.fromSnapshot(s));

  static Future<TechnicianRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TechnicianRecord.fromSnapshot(s));

  static TechnicianRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TechnicianRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TechnicianRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TechnicianRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TechnicianRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TechnicianRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTechnicianRecordData({
  int? phoneNumber,
  String? email,
  String? name,
  UserStatus? status,
  DateTime? createDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'phoneNumber': phoneNumber,
      'email': email,
      'name': name,
      'status': status,
      'createDate': createDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TechnicianRecordDocumentEquality implements Equality<TechnicianRecord> {
  const TechnicianRecordDocumentEquality();

  @override
  bool equals(TechnicianRecord? e1, TechnicianRecord? e2) {
    const listEquality = ListEquality();
    return e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.speclization, e2?.speclization) &&
        e1?.status == e2?.status &&
        e1?.createDate == e2?.createDate;
  }

  @override
  int hash(TechnicianRecord? e) => const ListEquality().hash([
        e?.phoneNumber,
        e?.email,
        e?.name,
        e?.speclization,
        e?.status,
        e?.createDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TechnicianRecord;
}
