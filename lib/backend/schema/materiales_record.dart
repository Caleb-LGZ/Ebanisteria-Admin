import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class MaterialesRecord extends FirestoreRecord {
  MaterialesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Nombre_Material" field.
  String? _nombreMaterial;
  String get nombreMaterial => _nombreMaterial ?? '';
  bool hasNombreMaterial() => _nombreMaterial != null;

  void _initializeFields() {
    _nombreMaterial = snapshotData['Nombre_Material'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('materiales');

  static Stream<MaterialesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialesRecord.fromSnapshot(s));

  static Future<MaterialesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialesRecord.fromSnapshot(s));

  static MaterialesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialesRecordData({
  String? nombreMaterial,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre_Material': nombreMaterial,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialesRecordDocumentEquality implements Equality<MaterialesRecord> {
  const MaterialesRecordDocumentEquality();

  @override
  bool equals(MaterialesRecord? e1, MaterialesRecord? e2) {
    return e1?.nombreMaterial == e2?.nombreMaterial;
  }

  @override
  int hash(MaterialesRecord? e) =>
      const ListEquality().hash([e?.nombreMaterial]);

  @override
  bool isValidKey(Object? o) => o is MaterialesRecord;
}
