import '/flutter_flow/flutter_flow_util.dart';
import 'sign_in_widget.dart' show SignInWidget;
import 'package:flutter/material.dart';

class SignInModel extends FlutterFlowModel<SignInWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for EmailTxtField widget.
  FocusNode? emailTxtFieldFocusNode;
  TextEditingController? emailTxtFieldController;
  String? Function(BuildContext, String?)? emailTxtFieldControllerValidator;
  // State field(s) for PwdTxtField widget.
  FocusNode? pwdTxtFieldFocusNode;
  TextEditingController? pwdTxtFieldController;
  late bool pwdTxtFieldVisibility;
  String? Function(BuildContext, String?)? pwdTxtFieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    pwdTxtFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTxtFieldFocusNode?.dispose();
    emailTxtFieldController?.dispose();

    pwdTxtFieldFocusNode?.dispose();
    pwdTxtFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
