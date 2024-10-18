import '/flutter_flow/flutter_flow_util.dart';
import 'alterar_senha_widget.dart' show AlterarSenhaWidget;
import 'package:flutter/material.dart';

class AlterarSenhaModel extends FlutterFlowModel<AlterarSenhaWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for senhaAtual widget.
  FocusNode? senhaAtualFocusNode;
  TextEditingController? senhaAtualTextController;
  String? Function(BuildContext, String?)? senhaAtualTextControllerValidator;
  // State field(s) for novaSenha widget.
  FocusNode? novaSenhaFocusNode;
  TextEditingController? novaSenhaTextController;
  String? Function(BuildContext, String?)? novaSenhaTextControllerValidator;
  // State field(s) for confirmarSenha widget.
  FocusNode? confirmarSenhaFocusNode;
  TextEditingController? confirmarSenhaTextController;
  String? Function(BuildContext, String?)?
      confirmarSenhaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    senhaAtualFocusNode?.dispose();
    senhaAtualTextController?.dispose();

    novaSenhaFocusNode?.dispose();
    novaSenhaTextController?.dispose();

    confirmarSenhaFocusNode?.dispose();
    confirmarSenhaTextController?.dispose();
  }
}
