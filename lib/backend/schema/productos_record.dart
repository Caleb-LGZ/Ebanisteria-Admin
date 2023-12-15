import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "base_image" field.
  String? _baseImage;
  String get baseImage => _baseImage ?? '';
  bool hasBaseImage() => _baseImage != null;

  // "all_images" field.
  List<String>? _allImages;
  List<String> get allImages => _allImages ?? const [];
  bool hasAllImages() => _allImages != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  bool hasMaterial() => _material != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "cantidad_ventas" field.
  int? _cantidadVentas;
  int get cantidadVentas => _cantidadVentas ?? 0;
  bool hasCantidadVentas() => _cantidadVentas != null;

  // "fecha_adicion" field.
  DateTime? _fechaAdicion;
  DateTime? get fechaAdicion => _fechaAdicion;
  bool hasFechaAdicion() => _fechaAdicion != null;

  // "alto" field.
  double? _alto;
  double get alto => _alto ?? 0.0;
  bool hasAlto() => _alto != null;

  // "largo" field.
  double? _largo;
  double get largo => _largo ?? 0.0;
  bool hasLargo() => _largo != null;

  // "ancho" field.
  double? _ancho;
  double get ancho => _ancho ?? 0.0;
  bool hasAncho() => _ancho != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _baseImage = snapshotData['base_image'] as String?;
    _allImages = getDataList(snapshotData['all_images']);
    _description = snapshotData['description'] as String?;
    _material = snapshotData['material'] as String?;
    _categoria = snapshotData['categoria'] as String?;
    _cantidadVentas = castToType<int>(snapshotData['cantidad_ventas']);
    _fechaAdicion = snapshotData['fecha_adicion'] as DateTime?;
    _alto = castToType<double>(snapshotData['alto']);
    _largo = castToType<double>(snapshotData['largo']);
    _ancho = castToType<double>(snapshotData['ancho']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? name,
  double? price,
  String? baseImage,
  String? description,
  String? material,
  String? categoria,
  int? cantidadVentas,
  DateTime? fechaAdicion,
  double? alto,
  double? largo,
  double? ancho,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'price': price,
      'base_image': baseImage,
      'description': description,
      'material': material,
      'categoria': categoria,
      'cantidad_ventas': cantidadVentas,
      'fecha_adicion': fechaAdicion,
      'alto': alto,
      'largo': largo,
      'ancho': ancho,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.baseImage == e2?.baseImage &&
        listEquality.equals(e1?.allImages, e2?.allImages) &&
        e1?.description == e2?.description &&
        e1?.material == e2?.material &&
        e1?.categoria == e2?.categoria &&
        e1?.cantidadVentas == e2?.cantidadVentas &&
        e1?.fechaAdicion == e2?.fechaAdicion &&
        e1?.alto == e2?.alto &&
        e1?.largo == e2?.largo &&
        e1?.ancho == e2?.ancho;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.name,
        e?.price,
        e?.baseImage,
        e?.allImages,
        e?.description,
        e?.material,
        e?.categoria,
        e?.cantidadVentas,
        e?.fechaAdicion,
        e?.alto,
        e?.largo,
        e?.ancho
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
