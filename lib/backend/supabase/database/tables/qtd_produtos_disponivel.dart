import '../database.dart';

class QtdProdutosDisponivelTable
    extends SupabaseTable<QtdProdutosDisponivelRow> {
  @override
  String get tableName => 'qtd_produtos_disponivel';

  @override
  QtdProdutosDisponivelRow createRow(Map<String, dynamic> data) =>
      QtdProdutosDisponivelRow(data);
}

class QtdProdutosDisponivelRow extends SupabaseDataRow {
  QtdProdutosDisponivelRow(super.data);

  @override
  SupabaseTable get table => QtdProdutosDisponivelTable();

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);
}
