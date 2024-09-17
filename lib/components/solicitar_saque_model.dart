import '/flutter_flow/flutter_flow_util.dart';
import 'solicitar_saque_widget.dart' show SolicitarSaqueWidget;
import 'package:flutter/material.dart';

class SolicitarSaqueModel extends FlutterFlowModel<SolicitarSaqueWidget> {
  ///  Local state fields for this component.

  int? navegacao = 1;

  double? valorSaque;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ValorSaque widget.
  FocusNode? valorSaqueFocusNode;
  TextEditingController? valorSaqueTextController;
  String? Function(BuildContext, String?)? valorSaqueTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    valorSaqueFocusNode?.dispose();
    valorSaqueTextController?.dispose();
  }
}
