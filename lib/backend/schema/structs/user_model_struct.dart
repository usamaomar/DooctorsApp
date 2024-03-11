// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends FFFirebaseStruct {
  UserModelStruct({
    DateTime? createdTime,
    String? firstName,
    String? phoneNumber,
    String? secondName,
    String? lastName,
    String? age,
    DocumentReference? clinicNoteRefrence,
    DocumentReference? clinicsRefrence,
    String? password,
    DocumentReference? userModelDocs,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdTime = createdTime,
        _firstName = firstName,
        _phoneNumber = phoneNumber,
        _secondName = secondName,
        _lastName = lastName,
        _age = age,
        _clinicNoteRefrence = clinicNoteRefrence,
        _clinicsRefrence = clinicsRefrence,
        _password = password,
        _userModelDocs = userModelDocs,
        super(firestoreUtilData);

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  set createdTime(DateTime? val) => _createdTime = val;
  bool hasCreatedTime() => _createdTime != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "second_name" field.
  String? _secondName;
  String get secondName => _secondName ?? '';
  set secondName(String? val) => _secondName = val;
  bool hasSecondName() => _secondName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  set age(String? val) => _age = val;
  bool hasAge() => _age != null;

  // "clinic_note_refrence" field.
  DocumentReference? _clinicNoteRefrence;
  DocumentReference? get clinicNoteRefrence => _clinicNoteRefrence;
  set clinicNoteRefrence(DocumentReference? val) => _clinicNoteRefrence = val;
  bool hasClinicNoteRefrence() => _clinicNoteRefrence != null;

  // "clinics_refrence" field.
  DocumentReference? _clinicsRefrence;
  DocumentReference? get clinicsRefrence => _clinicsRefrence;
  set clinicsRefrence(DocumentReference? val) => _clinicsRefrence = val;
  bool hasClinicsRefrence() => _clinicsRefrence != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;
  bool hasPassword() => _password != null;

  // "userModelDocs" field.
  DocumentReference? _userModelDocs;
  DocumentReference? get userModelDocs => _userModelDocs;
  set userModelDocs(DocumentReference? val) => _userModelDocs = val;
  bool hasUserModelDocs() => _userModelDocs != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        createdTime: data['created_time'] as DateTime?,
        firstName: data['first_name'] as String?,
        phoneNumber: data['phone_number'] as String?,
        secondName: data['second_name'] as String?,
        lastName: data['last_name'] as String?,
        age: data['age'] as String?,
        clinicNoteRefrence: data['clinic_note_refrence'] as DocumentReference?,
        clinicsRefrence: data['clinics_refrence'] as DocumentReference?,
        password: data['password'] as String?,
        userModelDocs: data['userModelDocs'] as DocumentReference?,
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'created_time': _createdTime,
        'first_name': _firstName,
        'phone_number': _phoneNumber,
        'second_name': _secondName,
        'last_name': _lastName,
        'age': _age,
        'clinic_note_refrence': _clinicNoteRefrence,
        'clinics_refrence': _clinicsRefrence,
        'password': _password,
        'userModelDocs': _userModelDocs,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'created_time': serializeParam(
          _createdTime,
          ParamType.DateTime,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'phone_number': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'second_name': serializeParam(
          _secondName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'age': serializeParam(
          _age,
          ParamType.String,
        ),
        'clinic_note_refrence': serializeParam(
          _clinicNoteRefrence,
          ParamType.DocumentReference,
        ),
        'clinics_refrence': serializeParam(
          _clinicsRefrence,
          ParamType.DocumentReference,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'userModelDocs': serializeParam(
          _userModelDocs,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
        createdTime: deserializeParam(
          data['created_time'],
          ParamType.DateTime,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phone_number'],
          ParamType.String,
          false,
        ),
        secondName: deserializeParam(
          data['second_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        age: deserializeParam(
          data['age'],
          ParamType.String,
          false,
        ),
        clinicNoteRefrence: deserializeParam(
          data['clinic_note_refrence'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clinic_notes'],
        ),
        clinicsRefrence: deserializeParam(
          data['clinics_refrence'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['clinics'],
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        userModelDocs: deserializeParam(
          data['userModelDocs'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserModelStruct &&
        createdTime == other.createdTime &&
        firstName == other.firstName &&
        phoneNumber == other.phoneNumber &&
        secondName == other.secondName &&
        lastName == other.lastName &&
        age == other.age &&
        clinicNoteRefrence == other.clinicNoteRefrence &&
        clinicsRefrence == other.clinicsRefrence &&
        password == other.password &&
        userModelDocs == other.userModelDocs;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdTime,
        firstName,
        phoneNumber,
        secondName,
        lastName,
        age,
        clinicNoteRefrence,
        clinicsRefrence,
        password,
        userModelDocs
      ]);
}

UserModelStruct createUserModelStruct({
  DateTime? createdTime,
  String? firstName,
  String? phoneNumber,
  String? secondName,
  String? lastName,
  String? age,
  DocumentReference? clinicNoteRefrence,
  DocumentReference? clinicsRefrence,
  String? password,
  DocumentReference? userModelDocs,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserModelStruct(
      createdTime: createdTime,
      firstName: firstName,
      phoneNumber: phoneNumber,
      secondName: secondName,
      lastName: lastName,
      age: age,
      clinicNoteRefrence: clinicNoteRefrence,
      clinicsRefrence: clinicsRefrence,
      password: password,
      userModelDocs: userModelDocs,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserModelStruct? updateUserModelStruct(
  UserModelStruct? userModel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userModel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserModelStructData(
  Map<String, dynamic> firestoreData,
  UserModelStruct? userModel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userModel == null) {
    return;
  }
  if (userModel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userModel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userModelData = getUserModelFirestoreData(userModel, forFieldValue);
  final nestedData = userModelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userModel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserModelFirestoreData(
  UserModelStruct? userModel, [
  bool forFieldValue = false,
]) {
  if (userModel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userModel.toMap());

  // Add any Firestore field values
  userModel.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserModelListFirestoreData(
  List<UserModelStruct>? userModels,
) =>
    userModels?.map((e) => getUserModelFirestoreData(e, true)).toList() ?? [];
