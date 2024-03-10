import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "user_type" field.
  UserType? _userType;
  UserType? get userType => _userType;
  bool hasUserType() => _userType != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "secend_name" field.
  String? _secendName;
  String get secendName => _secendName ?? '';
  bool hasSecendName() => _secendName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "clinic_note_refrence" field.
  DocumentReference? _clinicNoteRefrence;
  DocumentReference? get clinicNoteRefrence => _clinicNoteRefrence;
  bool hasClinicNoteRefrence() => _clinicNoteRefrence != null;

  // "clinics_refrence" field.
  DocumentReference? _clinicsRefrence;
  DocumentReference? get clinicsRefrence => _clinicsRefrence;
  bool hasClinicsRefrence() => _clinicsRefrence != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _userType = deserializeEnum<UserType>(snapshotData['user_type']);
    _firstName = snapshotData['first_name'] as String?;
    _secendName = snapshotData['secend_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _age = snapshotData['age'] as String?;
    _clinicNoteRefrence =
        snapshotData['clinic_note_refrence'] as DocumentReference?;
    _clinicsRefrence = snapshotData['clinics_refrence'] as DocumentReference?;
    _password = snapshotData['password'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  DateTime? createdTime,
  String? phoneNumber,
  UserType? userType,
  String? firstName,
  String? secendName,
  String? lastName,
  String? age,
  DocumentReference? clinicNoteRefrence,
  DocumentReference? clinicsRefrence,
  String? password,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'user_type': userType,
      'first_name': firstName,
      'secend_name': secendName,
      'last_name': lastName,
      'age': age,
      'clinic_note_refrence': clinicNoteRefrence,
      'clinics_refrence': clinicsRefrence,
      'password': password,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.userType == e2?.userType &&
        e1?.firstName == e2?.firstName &&
        e1?.secendName == e2?.secendName &&
        e1?.lastName == e2?.lastName &&
        e1?.age == e2?.age &&
        e1?.clinicNoteRefrence == e2?.clinicNoteRefrence &&
        e1?.clinicsRefrence == e2?.clinicsRefrence &&
        e1?.password == e2?.password;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.phoneNumber,
        e?.userType,
        e?.firstName,
        e?.secendName,
        e?.lastName,
        e?.age,
        e?.clinicNoteRefrence,
        e?.clinicsRefrence,
        e?.password
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
