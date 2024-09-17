import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carteira_widget.dart' show CarteiraWidget;
import 'package:flutter/material.dart';

class CarteiraModel extends FlutterFlowModel<CarteiraWidget> {
  ///  Local state fields for this page.

  int? navegacaoCarteira = 1;

  double? saldoDisponivel;

  double? saldoLiberar;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (saldoLiberar)] action in Carteira widget.
  ApiCallResponse? apiResultwl4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
