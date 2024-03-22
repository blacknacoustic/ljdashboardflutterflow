import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepairTicketsRecord extends FirestoreRecord {
  RepairTicketsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "make_model" field.
  String? _makeModel;
  String get makeModel => _makeModel ?? '';
  bool hasMakeModel() => _makeModel != null;

  // "serial_no" field.
  String? _serialNo;
  String get serialNo => _serialNo ?? '';
  bool hasSerialNo() => _serialNo != null;

  // "recieved_date" field.
  DateTime? _recievedDate;
  DateTime? get recievedDate => _recievedDate;
  bool hasRecievedDate() => _recievedDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "completed_date" field.
  String? _completedDate;
  String get completedDate => _completedDate ?? '';
  bool hasCompletedDate() => _completedDate != null;

  // "repair_id" field.
  String? _repairId;
  String get repairId => _repairId ?? '';
  bool hasRepairId() => _repairId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "cus_name" field.
  String? _cusName;
  String get cusName => _cusName ?? '';
  bool hasCusName() => _cusName != null;

  // "phone_no" field.
  String? _phoneNo;
  String get phoneNo => _phoneNo ?? '';
  bool hasPhoneNo() => _phoneNo != null;

  void _initializeFields() {
    _makeModel = snapshotData['make_model'] as String?;
    _serialNo = snapshotData['serial_no'] as String?;
    _recievedDate = snapshotData['recieved_date'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _completedDate = snapshotData['completed_date'] as String?;
    _repairId = snapshotData['repair_id'] as String?;
    _description = snapshotData['description'] as String?;
    _cusName = snapshotData['cus_name'] as String?;
    _phoneNo = snapshotData['phone_no'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('repair_tickets');

  static Stream<RepairTicketsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RepairTicketsRecord.fromSnapshot(s));

  static Future<RepairTicketsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RepairTicketsRecord.fromSnapshot(s));

  static RepairTicketsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RepairTicketsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RepairTicketsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RepairTicketsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RepairTicketsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RepairTicketsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRepairTicketsRecordData({
  String? makeModel,
  String? serialNo,
  DateTime? recievedDate,
  String? status,
  String? completedDate,
  String? repairId,
  String? description,
  String? cusName,
  String? phoneNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'make_model': makeModel,
      'serial_no': serialNo,
      'recieved_date': recievedDate,
      'status': status,
      'completed_date': completedDate,
      'repair_id': repairId,
      'description': description,
      'cus_name': cusName,
      'phone_no': phoneNo,
    }.withoutNulls,
  );

  return firestoreData;
}

class RepairTicketsRecordDocumentEquality
    implements Equality<RepairTicketsRecord> {
  const RepairTicketsRecordDocumentEquality();

  @override
  bool equals(RepairTicketsRecord? e1, RepairTicketsRecord? e2) {
    return e1?.makeModel == e2?.makeModel &&
        e1?.serialNo == e2?.serialNo &&
        e1?.recievedDate == e2?.recievedDate &&
        e1?.status == e2?.status &&
        e1?.completedDate == e2?.completedDate &&
        e1?.repairId == e2?.repairId &&
        e1?.description == e2?.description &&
        e1?.cusName == e2?.cusName &&
        e1?.phoneNo == e2?.phoneNo;
  }

  @override
  int hash(RepairTicketsRecord? e) => const ListEquality().hash([
        e?.makeModel,
        e?.serialNo,
        e?.recievedDate,
        e?.status,
        e?.completedDate,
        e?.repairId,
        e?.description,
        e?.cusName,
        e?.phoneNo
      ]);

  @override
  bool isValidKey(Object? o) => o is RepairTicketsRecord;
}
