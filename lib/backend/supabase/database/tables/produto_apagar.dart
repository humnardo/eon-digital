import '../database.dart';

class ProdutoApagarTable extends SupabaseTable<ProdutoApagarRow> {
  @override
  String get tableName => 'produto_apagar';

  @override
  ProdutoApagarRow createRow(Map<String, dynamic> data) =>
      ProdutoApagarRow(data);
}

class ProdutoApagarRow extends SupabaseDataRow {
  ProdutoApagarRow(super.data);

  @override
  SupabaseTable get table => ProdutoApagarTable();

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  String? get uniqueIdBubble => getField<String>('unique_id_bubble');
  set uniqueIdBubble(String? value) =>
      setField<String>('unique_id_bubble', value);
}
