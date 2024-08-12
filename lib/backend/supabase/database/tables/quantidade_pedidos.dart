import '../database.dart';

class QuantidadePedidosTable extends SupabaseTable<QuantidadePedidosRow> {
  @override
  String get tableName => 'quantidade_pedidos';

  @override
  QuantidadePedidosRow createRow(Map<String, dynamic> data) =>
      QuantidadePedidosRow(data);
}

class QuantidadePedidosRow extends SupabaseDataRow {
  QuantidadePedidosRow(super.data);

  @override
  SupabaseTable get table => QuantidadePedidosTable();

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);
}
