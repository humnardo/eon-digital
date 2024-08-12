import '../database.dart';

class PedidoStatusTable extends SupabaseTable<PedidoStatusRow> {
  @override
  String get tableName => 'pedido_status';

  @override
  PedidoStatusRow createRow(Map<String, dynamic> data) => PedidoStatusRow(data);
}

class PedidoStatusRow extends SupabaseDataRow {
  PedidoStatusRow(super.data);

  @override
  SupabaseTable get table => PedidoStatusTable();

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
