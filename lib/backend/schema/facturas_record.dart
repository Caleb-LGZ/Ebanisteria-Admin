import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class FacturasRecord extends FirestoreRecord {
  FacturasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _amount = castToType<double>(snapshotData['amount']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('facturas');

  static Stream<FacturasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacturasRecord.fromSnapshot(s));

  static Future<FacturasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacturasRecord.fromSnapshot(s));

  static FacturasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacturasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacturasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacturasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacturasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacturasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacturasRecordData({
  String? name,
  double? amount,
  DateTime? createdAt,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'amount': amount,
      'created_at': createdAt,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacturasRecordDocumentEquality implements Equality<FacturasRecord> {
  const FacturasRecordDocumentEquality();

  @override
  bool equals(FacturasRecord? e1, FacturasRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.amount == e2?.amount &&
        e1?.createdAt == e2?.createdAt &&
        e1?.cantidad == e2?.cantidad;
  }

  @override
  int hash(FacturasRecord? e) => const ListEquality()
      .hash([e?.name, e?.amount, e?.createdAt, e?.cantidad]);

  @override
  bool isValidKey(Object? o) => o is FacturasRecord;
}
