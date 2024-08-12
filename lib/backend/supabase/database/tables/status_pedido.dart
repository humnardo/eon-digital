import '../database.dart';

class StatusPedidoTable extends SupabaseTable<StatusPedidoRow> {
  @override
  String get tableName => 'status_pedido';

  @override
  StatusPedidoRow createRow(Map<String, dynamic> data) => StatusPedidoRow(data);
}

class StatusPedidoRow extends SupabaseDataRow {
  StatusPedidoRow(super.data);

  @override
  SupabaseTable get table => StatusPedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);
}
