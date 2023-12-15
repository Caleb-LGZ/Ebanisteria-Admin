import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'agregar_widget.dart' show AgregarWidget;
import 'package:flutter/material.dart';

class AgregarModel extends FlutterFlowModel<AgregarWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for field_nombre widget.
  FocusNode? fieldNombreFocusNode;
  TextEditingController? fieldNombreController;
  String? Function(BuildContext, String?)? fieldNombreControllerValidator;
  // State field(s) for field_precio widget.
  FocusNode? fieldPrecioFocusNode;
  TextEditingController? fieldPrecioController;
  String? Function(BuildContext, String?)? fieldPrecioControllerValidator;
  // State field(s) for drop_materiales widget.
  String? dropMaterialesValue;
  FormFieldController<String>? dropMaterialesValueController;
  // State field(s) for drop_categorias widget.
  String? dropCategoriasValue;
  FormFieldController<String>? dropCategoriasValueController;
  // State field(s) for field_ancho widget.
  FocusNode? fieldAnchoFocusNode;
  TextEditingController? fieldAnchoController;
  String? Function(BuildContext, String?)? fieldAnchoControllerValidator;
  // State field(s) for field_largo widget.
  FocusNode? fieldLargoFocusNode;
  TextEditingController? fieldLargoController;
  String? Function(BuildContext, String?)? fieldLargoControllerValidator;
  // State field(s) for field_alto widget.
  FocusNode? fieldAltoFocusNode;
  TextEditingController? fieldAltoController;
  String? Function(BuildContext, String?)? fieldAltoControllerValidator;
  // State field(s) for field_description widget.
  FocusNode? fieldDescriptionFocusNode;
  TextEditingController? fieldDescriptionController;
  String? Function(BuildContext, String?)? fieldDescriptionControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    fieldNombreFocusNode?.dispose();
    fieldNombreController?.dispose();

    fieldPrecioFocusNode?.dispose();
    fieldPrecioController?.dispose();

    fieldAnchoFocusNode?.dispose();
    fieldAnchoController?.dispose();

    fieldLargoFocusNode?.dispose();
    fieldLargoController?.dispose();

    fieldAltoFocusNode?.dispose();
    fieldAltoController?.dispose();

    fieldDescriptionFocusNode?.dispose();
    fieldDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
