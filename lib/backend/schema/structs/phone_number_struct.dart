// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PhoneNumberStruct extends FFFirebaseStruct {
  PhoneNumberStruct({
    String? id,
    String? assistant,
    String? phoneNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _assistant = assistant,
        _phoneNumber = phoneNumber,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "assistant" field.
  String? _assistant;
  String get assistant => _assistant ?? '';
  set assistant(String? val) => _assistant = val;

  bool hasAssistant() => _assistant != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  static PhoneNumberStruct fromMap(Map<String, dynamic> data) =>
      PhoneNumberStruct(
        id: data['id'] as String?,
        assistant: data['assistant'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
      );

  static PhoneNumberStruct? maybeFromMap(dynamic data) => data is Map
      ? PhoneNumberStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'assistant': _assistant,
        'phoneNumber': _phoneNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'assistant': serializeParam(
          _assistant,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
      }.withoutNulls;

  static PhoneNumberStruct fromSerializableMap(Map<String, dynamic> data) =>
      PhoneNumberStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        assistant: deserializeParam(
          data['assistant'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PhoneNumberStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PhoneNumberStruct &&
        id == other.id &&
        assistant == other.assistant &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([id, assistant, phoneNumber]);
}

PhoneNumberStruct createPhoneNumberStruct({
  String? id,
  String? assistant,
  String? phoneNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PhoneNumberStruct(
      id: id,
      assistant: assistant,
      phoneNumber: phoneNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PhoneNumberStruct? updatePhoneNumberStruct(
  PhoneNumberStruct? phoneNumberStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    phoneNumberStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPhoneNumberStructData(
  Map<String, dynamic> firestoreData,
  PhoneNumberStruct? phoneNumberStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (phoneNumberStruct == null) {
    return;
  }
  if (phoneNumberStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && phoneNumberStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final phoneNumberStructData =
      getPhoneNumberFirestoreData(phoneNumberStruct, forFieldValue);
  final nestedData =
      phoneNumberStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = phoneNumberStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPhoneNumberFirestoreData(
  PhoneNumberStruct? phoneNumberStruct, [
  bool forFieldValue = false,
]) {
  if (phoneNumberStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(phoneNumberStruct.toMap());

  // Add any Firestore field values
  phoneNumberStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPhoneNumberListFirestoreData(
  List<PhoneNumberStruct>? phoneNumberStructs,
) =>
    phoneNumberStructs
        ?.map((e) => getPhoneNumberFirestoreData(e, true))
        .toList() ??
    [];
