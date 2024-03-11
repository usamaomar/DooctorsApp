import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClinicNotesRecord extends FirestoreRecord {
  ClinicNotesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "chronic_medical_illness" field.
  String? _chronicMedicalIllness;
  String get chronicMedicalIllness => _chronicMedicalIllness ?? '';
  bool hasChronicMedicalIllness() => _chronicMedicalIllness != null;

  // "treatment" field.
  String? _treatment;
  String get treatment => _treatment ?? '';
  bool hasTreatment() => _treatment != null;

  // "drug_allergy" field.
  String? _drugAllergy;
  String get drugAllergy => _drugAllergy ?? '';
  bool hasDrugAllergy() => _drugAllergy != null;

  // "history" field.
  String? _history;
  String get history => _history ?? '';
  bool hasHistory() => _history != null;

  // "pmh" field.
  String? _pmh;
  String get pmh => _pmh ?? '';
  bool hasPmh() => _pmh != null;

  // "psh" field.
  String? _psh;
  String get psh => _psh ?? '';
  bool hasPsh() => _psh != null;

  // "family_hx" field.
  String? _familyHx;
  String get familyHx => _familyHx ?? '';
  bool hasFamilyHx() => _familyHx != null;

  // "physical_exam" field.
  String? _physicalExam;
  String get physicalExam => _physicalExam ?? '';
  bool hasPhysicalExam() => _physicalExam != null;

  // "labs" field.
  String? _labs;
  String get labs => _labs ?? '';
  bool hasLabs() => _labs != null;

  // "radiology" field.
  String? _radiology;
  String get radiology => _radiology ?? '';
  bool hasRadiology() => _radiology != null;

  // "histopathology" field.
  String? _histopathology;
  String get histopathology => _histopathology ?? '';
  bool hasHistopathology() => _histopathology != null;

  // "impression_and_diagnosis" field.
  String? _impressionAndDiagnosis;
  String get impressionAndDiagnosis => _impressionAndDiagnosis ?? '';
  bool hasImpressionAndDiagnosis() => _impressionAndDiagnosis != null;

  // "managment_plan" field.
  String? _managmentPlan;
  String get managmentPlan => _managmentPlan ?? '';
  bool hasManagmentPlan() => _managmentPlan != null;

  // "covering_party" field.
  String? _coveringParty;
  String get coveringParty => _coveringParty ?? '';
  bool hasCoveringParty() => _coveringParty != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _chronicMedicalIllness = snapshotData['chronic_medical_illness'] as String?;
    _treatment = snapshotData['treatment'] as String?;
    _drugAllergy = snapshotData['drug_allergy'] as String?;
    _history = snapshotData['history'] as String?;
    _pmh = snapshotData['pmh'] as String?;
    _psh = snapshotData['psh'] as String?;
    _familyHx = snapshotData['family_hx'] as String?;
    _physicalExam = snapshotData['physical_exam'] as String?;
    _labs = snapshotData['labs'] as String?;
    _radiology = snapshotData['radiology'] as String?;
    _histopathology = snapshotData['histopathology'] as String?;
    _impressionAndDiagnosis =
        snapshotData['impression_and_diagnosis'] as String?;
    _managmentPlan = snapshotData['managment_plan'] as String?;
    _coveringParty = snapshotData['covering_party'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clinic_notes');

  static Stream<ClinicNotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClinicNotesRecord.fromSnapshot(s));

  static Future<ClinicNotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClinicNotesRecord.fromSnapshot(s));

  static ClinicNotesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClinicNotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClinicNotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClinicNotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClinicNotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClinicNotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClinicNotesRecordData({
  DateTime? date,
  String? chronicMedicalIllness,
  String? treatment,
  String? drugAllergy,
  String? history,
  String? pmh,
  String? psh,
  String? familyHx,
  String? physicalExam,
  String? labs,
  String? radiology,
  String? histopathology,
  String? impressionAndDiagnosis,
  String? managmentPlan,
  String? coveringParty,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'chronic_medical_illness': chronicMedicalIllness,
      'treatment': treatment,
      'drug_allergy': drugAllergy,
      'history': history,
      'pmh': pmh,
      'psh': psh,
      'family_hx': familyHx,
      'physical_exam': physicalExam,
      'labs': labs,
      'radiology': radiology,
      'histopathology': histopathology,
      'impression_and_diagnosis': impressionAndDiagnosis,
      'managment_plan': managmentPlan,
      'covering_party': coveringParty,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClinicNotesRecordDocumentEquality implements Equality<ClinicNotesRecord> {
  const ClinicNotesRecordDocumentEquality();

  @override
  bool equals(ClinicNotesRecord? e1, ClinicNotesRecord? e2) {
    return e1?.date == e2?.date &&
        e1?.chronicMedicalIllness == e2?.chronicMedicalIllness &&
        e1?.treatment == e2?.treatment &&
        e1?.drugAllergy == e2?.drugAllergy &&
        e1?.history == e2?.history &&
        e1?.pmh == e2?.pmh &&
        e1?.psh == e2?.psh &&
        e1?.familyHx == e2?.familyHx &&
        e1?.physicalExam == e2?.physicalExam &&
        e1?.labs == e2?.labs &&
        e1?.radiology == e2?.radiology &&
        e1?.histopathology == e2?.histopathology &&
        e1?.impressionAndDiagnosis == e2?.impressionAndDiagnosis &&
        e1?.managmentPlan == e2?.managmentPlan &&
        e1?.coveringParty == e2?.coveringParty;
  }

  @override
  int hash(ClinicNotesRecord? e) => const ListEquality().hash([
        e?.date,
        e?.chronicMedicalIllness,
        e?.treatment,
        e?.drugAllergy,
        e?.history,
        e?.pmh,
        e?.psh,
        e?.familyHx,
        e?.physicalExam,
        e?.labs,
        e?.radiology,
        e?.histopathology,
        e?.impressionAndDiagnosis,
        e?.managmentPlan,
        e?.coveringParty
      ]);

  @override
  bool isValidKey(Object? o) => o is ClinicNotesRecord;
}
