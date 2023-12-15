import '/flutter_flow/flutter_flow_util.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for NameTxtField widget.
  FocusNode? nameTxtFieldFocusNode;
  TextEditingController? nameTxtFieldController;
  String? Function(BuildContext, String?)? nameTxtFieldControllerValidator;
  // State field(s) for EmailTxtField widget.
  FocusNode? emailTxtFieldFocusNode;
  TextEditingController? emailTxtFieldController;
  String? Function(BuildContext, String?)? emailTxtFieldControllerValidator;
  // State field(s) for PwdTxtField widget.
  FocusNode? pwdTxtFieldFocusNode;
  TextEditingController? pwdTxtFieldController;
  late bool pwdTxtFieldVisibility;
  String? Function(BuildContext, String?)? pwdTxtFieldControllerValidator;
  // State field(s) for Pwd2TxtField widget.
  FocusNode? pwd2TxtFieldFocusNode;
  TextEditingController? pwd2TxtFieldController;
  late bool pwd2TxtFieldVisibility;
  String? Function(BuildContext, String?)? pwd2TxtFieldControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pwdTxtFieldVisibility = false;
    pwd2TxtFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameTxtFieldFocusNode?.dispose();
    nameTxtFieldController?.dispose();

    emailTxtFieldFocusNode?.dispose();
    emailTxtFieldController?.dispose();

    pwdTxtFieldFocusNode?.dispose();
    pwdTxtFieldController?.dispose();

    pwd2TxtFieldFocusNode?.dispose();
    pwd2TxtFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
