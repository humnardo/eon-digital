import '/flutter_flow/flutter_flow_util.dart';
import 'dados_user_widget.dart' show DadosUserWidget;
import 'package:flutter/material.dart';

class DadosUserModel extends FlutterFlowModel<DadosUserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for whatsapp widget.
  FocusNode? whatsappFocusNode;
  TextEditingController? whatsappTextController;
  String? Function(BuildContext, String?)? whatsappTextControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    whatsappFocusNode?.dispose();
    whatsappTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();
  }
}
