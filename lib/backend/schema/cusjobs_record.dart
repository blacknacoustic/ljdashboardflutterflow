import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CusjobsRecord extends FirestoreRecord {
  CusjobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "scheduled_date" field.
  DateTime? _scheduledDate;
  DateTime? get scheduledDate => _scheduledDate;
  bool hasScheduledDate() => _scheduledDate != null;

  // "completed_date" field.
  DateTime? _completedDate;
  DateTime? get completedDate => _completedDate;
  bool hasCompletedDate() => _completedDate != null;

  // "job_description" field.
  String? _jobDescription;
  String get jobDescription => _jobDescription ?? '';
  bool hasJobDescription() => _jobDescription != null;

  // "cus_name" field.
  String? _cusName;
  String get cusName => _cusName ?? '';
  bool hasCusName() => _cusName != null;

  // "streetname" field.
  String? _streetname;
  String get streetname => _streetname ?? '';
  bool hasStreetname() => _streetname != null;

  // "city_state_zip" field.
  String? _cityStateZip;
  String get cityStateZip => _cityStateZip ?? '';
  bool hasCityStateZip() => _cityStateZip != null;

  // "phone_no" field.
  String? _phoneNo;
  String get phoneNo => _phoneNo ?? '';
  bool hasPhoneNo() => _phoneNo != null;

  // "job_id" field.
  String? _jobId;
  String get jobId => _jobId ?? '';
  bool hasJobId() => _jobId != null;

  void _initializeFields() {
    _scheduledDate = snapshotData['scheduled_date'] as DateTime?;
    _completedDate = snapshotData['completed_date'] as DateTime?;
    _jobDescription = snapshotData['job_description'] as String?;
    _cusName = snapshotData['cus_name'] as String?;
    _streetname = snapshotData['streetname'] as String?;
    _cityStateZip = snapshotData['city_state_zip'] as String?;
    _phoneNo = snapshotData['phone_no'] as String?;
    _jobId = snapshotData['job_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cusjobs');

  static Stream<CusjobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CusjobsRecord.fromSnapshot(s));

  static Future<CusjobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CusjobsRecord.fromSnapshot(s));

  static CusjobsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CusjobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CusjobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CusjobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CusjobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CusjobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCusjobsRecordData({
  DateTime? scheduledDate,
  DateTime? completedDate,
  String? jobDescription,
  String? cusName,
  String? streetname,
  String? cityStateZip,
  String? phoneNo,
  String? jobId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'scheduled_date': scheduledDate,
      'completed_date': completedDate,
      'job_description': jobDescription,
      'cus_name': cusName,
      'streetname': streetname,
      'city_state_zip': cityStateZip,
      'phone_no': phoneNo,
      'job_id': jobId,
    }.withoutNulls,
  );

  return firestoreData;
}

class CusjobsRecordDocumentEquality implements Equality<CusjobsRecord> {
  const CusjobsRecordDocumentEquality();

  @override
  bool equals(CusjobsRecord? e1, CusjobsRecord? e2) {
    return e1?.scheduledDate == e2?.scheduledDate &&
        e1?.completedDate == e2?.completedDate &&
        e1?.jobDescription == e2?.jobDescription &&
        e1?.cusName == e2?.cusName &&
        e1?.streetname == e2?.streetname &&
        e1?.cityStateZip == e2?.cityStateZip &&
        e1?.phoneNo == e2?.phoneNo &&
        e1?.jobId == e2?.jobId;
  }

  @override
  int hash(CusjobsRecord? e) => const ListEquality().hash([
        e?.scheduledDate,
        e?.completedDate,
        e?.jobDescription,
        e?.cusName,
        e?.streetname,
        e?.cityStateZip,
        e?.phoneNo,
        e?.jobId
      ]);

  @override
  bool isValidKey(Object? o) => o is CusjobsRecord;
}
