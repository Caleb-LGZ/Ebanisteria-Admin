import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_widget.dart' show EditarWidget;
import 'package:flutter/material.dart';

class EditarModel extends FlutterFlowModel<EditarWidget> {
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
  // State field(s) for field_alto widget.
  FocusNode? fieldAltoFocusNode;
  TextEditingController? fieldAltoController;
  String? Function(BuildContext, String?)? fieldAltoControllerValidator;
  // State field(s) for field_largo widget.
  FocusNode? fieldLargoFocusNode;
  TextEditingController? fieldLargoController;
  String? Function(BuildContext, String?)? fieldLargoControllerValidator;
  // State field(s) for field_ancho widget.
  FocusNode? fieldAnchoFocusNode;
  TextEditingController? fieldAnchoController;
  String? Function(BuildContext, String?)? fieldAnchoControllerValidator;
  // State field(s) for field_descripcion widget.
  FocusNode? fieldDescripcionFocusNode;
  TextEditingController? fieldDescripcionController;
  String? Function(BuildContext, String?)? fieldDescripcionControllerValidator;

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

    fieldAltoFocusNode?.dispose();
    fieldAltoController?.dispose();

    fieldLargoFocusNode?.dispose();
    fieldLargoController?.dispose();

    fieldAnchoFocusNode?.dispose();
    fieldAnchoController?.dispose();

    fieldDescripcionFocusNode?.dispose();
    fieldDescripcionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
