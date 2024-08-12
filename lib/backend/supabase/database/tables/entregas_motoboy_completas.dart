import '../database.dart';

class EntregasMotoboyCompletasTable
    extends SupabaseTable<EntregasMotoboyCompletasRow> {
  @override
  String get tableName => 'entregas_motoboy_completas';

  @override
  EntregasMotoboyCompletasRow createRow(Map<String, dynamic> data) =>
      EntregasMotoboyCompletasRow(data);
}

class EntregasMotoboyCompletasRow extends SupabaseDataRow {
  EntregasMotoboyCompletasRow(super.data);

  @override
  SupabaseTable get table => EntregasMotoboyCompletasTable();

  int? get quantidadePedidos => getField<int>('quantidade_pedidos');
  set quantidadePedidos(int? value) =>
      setField<int>('quantidade_pedidos', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  int? get motoboy => getField<int>('motoboy');
  set motoboy(int? value) => setField<int>('motoboy', value);
}
