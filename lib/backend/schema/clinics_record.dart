import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ClinicsRecord extends FirestoreRecord {
  ClinicsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "logo_url" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  bool hasLogoUrl() => _logoUrl != null;

  // "doctor_refrence" field.
  DocumentReference? _doctorRefrence;
  DocumentReference? get doctorRefrence => _doctorRefrence;
  bool hasDoctorRefrence() => _doctorRefrence != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _address = snapshotData['address'] as String?;
    _logoUrl = snapshotData['logo_url'] as String?;
    _doctorRefrence = snapshotData['doctor_refrence'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clinics');

  static Stream<ClinicsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClinicsRecord.fromSnapshot(s));

  static Future<ClinicsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClinicsRecord.fromSnapshot(s));

  static ClinicsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClinicsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClinicsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClinicsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClinicsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClinicsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClinicsRecordData({
  String? name,
  String? address,
  String? logoUrl,
  DocumentReference? doctorRefrence,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'address': address,
      'logo_url': logoUrl,
      'doctor_refrence': doctorRefrence,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClinicsRecordDocumentEquality implements Equality<ClinicsRecord> {
  const ClinicsRecordDocumentEquality();

  @override
  bool equals(ClinicsRecord? e1, ClinicsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.address == e2?.address &&
        e1?.logoUrl == e2?.logoUrl &&
        e1?.doctorRefrence == e2?.doctorRefrence;
  }

  @override
  int hash(ClinicsRecord? e) => const ListEquality()
      .hash([e?.name, e?.address, e?.logoUrl, e?.doctorRefrence]);

  @override
  bool isValidKey(Object? o) => o is ClinicsRecord;
}
