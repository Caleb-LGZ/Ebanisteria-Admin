import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MedidasRecord extends FirestoreRecord {
  MedidasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Ancho" field.
  double? _ancho;
  double get ancho => _ancho ?? 0.0;
  bool hasAncho() => _ancho != null;

  // "Largo" field.
  double? _largo;
  double get largo => _largo ?? 0.0;
  bool hasLargo() => _largo != null;

  // "Alto" field.
  double? _alto;
  double get alto => _alto ?? 0.0;
  bool hasAlto() => _alto != null;

  void _initializeFields() {
    _ancho = castToType<double>(snapshotData['Ancho']);
    _largo = castToType<double>(snapshotData['Largo']);
    _alto = castToType<double>(snapshotData['Alto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medidas');

  static Stream<MedidasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedidasRecord.fromSnapshot(s));

  static Future<MedidasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedidasRecord.fromSnapshot(s));

  static MedidasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedidasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedidasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedidasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedidasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedidasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedidasRecordData({
  double? ancho,
  double? largo,
  double? alto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Ancho': ancho,
      'Largo': largo,
      'Alto': alto,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedidasRecordDocumentEquality implements Equality<MedidasRecord> {
  const MedidasRecordDocumentEquality();

  @override
  bool equals(MedidasRecord? e1, MedidasRecord? e2) {
    return e1?.ancho == e2?.ancho &&
        e1?.largo == e2?.largo &&
        e1?.alto == e2?.alto;
  }

  @override
  int hash(MedidasRecord? e) =>
      const ListEquality().hash([e?.ancho, e?.largo, e?.alto]);

  @override
  bool isValidKey(Object? o) => o is MedidasRecord;
}
