import '../database.dart';

class RankingProdutosMaisVendidosTable
    extends SupabaseTable<RankingProdutosMaisVendidosRow> {
  @override
  String get tableName => 'ranking_produtos_mais_vendidos';

  @override
  RankingProdutosMaisVendidosRow createRow(Map<String, dynamic> data) =>
      RankingProdutosMaisVendidosRow(data);
}

class RankingProdutosMaisVendidosRow extends SupabaseDataRow {
  RankingProdutosMaisVendidosRow(super.data);

  @override
  SupabaseTable get table => RankingProdutosMaisVendidosTable();

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get totalVendido => getField<double>('total_vendido');
  set totalVendido(double? value) => setField<double>('total_vendido', value);
}
