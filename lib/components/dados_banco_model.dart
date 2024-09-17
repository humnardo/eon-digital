import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dados_banco_widget.dart' show DadosBancoWidget;
import 'package:flutter/material.dart';

class DadosBancoModel extends FlutterFlowModel<DadosBancoWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Banco widget.
  FocusNode? bancoFocusNode;
  TextEditingController? bancoTextController;
  String? Function(BuildContext, String?)? bancoTextControllerValidator;
  // State field(s) for agencia widget.
  FocusNode? agenciaFocusNode;
  TextEditingController? agenciaTextController;
  String? Function(BuildContext, String?)? agenciaTextControllerValidator;
  // State field(s) for conta widget.
  FocusNode? contaFocusNode;
  TextEditingController? contaTextController;
  String? Function(BuildContext, String?)? contaTextControllerValidator;
  // State field(s) for ddTipoChave widget.
  String? ddTipoChaveValue;
  FormFieldController<String>? ddTipoChaveValueController;
  // State field(s) for ChavePIX widget.
  FocusNode? chavePIXFocusNode;
  TextEditingController? chavePIXTextController;
  String? Function(BuildContext, String?)? chavePIXTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TipoChavepixRow>? chavePixSelect;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bancoFocusNode?.dispose();
    bancoTextController?.dispose();

    agenciaFocusNode?.dispose();
    agenciaTextController?.dispose();

    contaFocusNode?.dispose();
    contaTextController?.dispose();

    chavePIXFocusNode?.dispose();
    chavePIXTextController?.dispose();
  }
}
