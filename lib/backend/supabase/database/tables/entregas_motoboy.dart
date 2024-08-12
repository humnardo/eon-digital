import '../database.dart';

class EntregasMotoboyTable extends SupabaseTable<EntregasMotoboyRow> {
  @override
  String get tableName => 'entregas_motoboy';

  @override
  EntregasMotoboyRow createRow(Map<String, dynamic> data) =>
      EntregasMotoboyRow(data);
}

class EntregasMotoboyRow extends SupabaseDataRow {
  EntregasMotoboyRow(super.data);

  @override
  SupabaseTable get table => EntregasMotoboyTable();

  int? get quantidadePedidos => getField<int>('quantidade_pedidos');
  set quantidadePedidos(int? value) =>
      setField<int>('quantidade_pedidos', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  int? get motoboy => getField<int>('motoboy');
  set motoboy(int? value) => setField<int>('motoboy', value);
}
