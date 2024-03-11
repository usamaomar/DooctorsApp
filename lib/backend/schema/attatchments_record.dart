import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AttatchmentsRecord extends FirestoreRecord {
  AttatchmentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "file_url" field.
  String? _fileUrl;
  String get fileUrl => _fileUrl ?? '';
  bool hasFileUrl() => _fileUrl != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  void _initializeFields() {
    _fileUrl = snapshotData['file_url'] as String?;
    _createdDate = snapshotData['created_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('attatchments');

  static Stream<AttatchmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttatchmentsRecord.fromSnapshot(s));

  static Future<AttatchmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttatchmentsRecord.fromSnapshot(s));

  static AttatchmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttatchmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttatchmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttatchmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttatchmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttatchmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttatchmentsRecordData({
  String? fileUrl,
  DateTime? createdDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'file_url': fileUrl,
      'created_date': createdDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttatchmentsRecordDocumentEquality
    implements Equality<AttatchmentsRecord> {
  const AttatchmentsRecordDocumentEquality();

  @override
  bool equals(AttatchmentsRecord? e1, AttatchmentsRecord? e2) {
    return e1?.fileUrl == e2?.fileUrl && e1?.createdDate == e2?.createdDate;
  }

  @override
  int hash(AttatchmentsRecord? e) =>
      const ListEquality().hash([e?.fileUrl, e?.createdDate]);

  @override
  bool isValidKey(Object? o) => o is AttatchmentsRecord;
}
