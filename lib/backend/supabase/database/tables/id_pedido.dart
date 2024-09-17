import '../database.dart';

class IdPedidoTable extends SupabaseTable<IdPedidoRow> {
  @override
  String get tableName => 'id_pedido';

  @override
  IdPedidoRow createRow(Map<String, dynamic> data) => IdPedidoRow(data);
}

class IdPedidoRow extends SupabaseDataRow {
  IdPedidoRow(super.data);

  @override
  SupabaseTable get table => IdPedidoTable();

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  String? get uuidBubble => getField<String>('uuid_bubble');
  set uuidBubble(String? value) => setField<String>('uuid_bubble', value);
}
