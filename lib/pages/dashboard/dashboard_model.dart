import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  String? mostrarSubmenu;

  int navegacao = 1;

  double? totalComissao = 0.0;

  DateTime? dataIni;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Dashboard widget.
  List<UsuariosRow>? idUserPublic;
  // Stores action output result for [Backend Call - API (TotalComissoes)] action in Dashboard widget.
  ApiCallResponse? apiResult96k;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
