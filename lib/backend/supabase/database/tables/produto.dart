import '../database.dart';

class ProdutoTable extends SupabaseTable<ProdutoRow> {
  @override
  String get tableName => 'produto';

  @override
  ProdutoRow createRow(Map<String, dynamic> data) => ProdutoRow(data);
}

class ProdutoRow extends SupabaseDataRow {
  ProdutoRow(super.data);

  @override
  SupabaseTable get table => ProdutoTable();

  int get idProduto => getField<int>('id_produto')!;
  set idProduto(int value) => setField<int>('id_produto', value);

  bool? get afiliacao1click => getField<bool>('afiliacao_1click');
  set afiliacao1click(bool? value) => setField<bool>('afiliacao_1click', value);

  double? get altura => getField<double>('altura');
  set altura(double? value) => setField<double>('altura', value);

  double? get comprimento => getField<double>('comprimento');
  set comprimento(double? value) => setField<double>('comprimento', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  bool? get disponivelAfiliados => getField<bool>('disponivel_afiliados');
  set disponivelAfiliados(bool? value) =>
      setField<bool>('disponivel_afiliados', value);

  String? get fotoProduto => getField<String>('foto_produto');
  set fotoProduto(String? value) => setField<String>('foto_produto', value);

  double? get largura => getField<double>('largura');
  set largura(double? value) => setField<double>('largura', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get peso => getField<double>('Peso');
  set peso(double? value) => setField<double>('Peso', value);

  int? get idProdutor => getField<int>('id_produtor');
  set idProdutor(int? value) => setField<int>('id_produtor', value);

  int? get statusProduto => getField<int>('status_produto');
  set statusProduto(int? value) => setField<int>('status_produto', value);

  bool? get visivelVitrine => getField<bool>('visivel_vitrine');
  set visivelVitrine(bool? value) => setField<bool>('visivel_vitrine', value);

  double? get ranking => getField<double>('ranking');
  set ranking(double? value) => setField<double>('ranking', value);

  String? get uniqueIdBubble => getField<String>('unique_id_bubble');
  set uniqueIdBubble(String? value) =>
      setField<String>('unique_id_bubble', value);
}
