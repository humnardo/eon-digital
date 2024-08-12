import '../database.dart';

class PedidoCentroLogisticoTable
    extends SupabaseTable<PedidoCentroLogisticoRow> {
  @override
  String get tableName => 'pedido_centro_logistico';

  @override
  PedidoCentroLogisticoRow createRow(Map<String, dynamic> data) =>
      PedidoCentroLogisticoRow(data);
}

class PedidoCentroLogisticoRow extends SupabaseDataRow {
  PedidoCentroLogisticoRow(super.data);

  @override
  SupabaseTable get table => PedidoCentroLogisticoTable();

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
