import '../database.dart';

class OfertasTable extends SupabaseTable<OfertasRow> {
  @override
  String get tableName => 'ofertas';

  @override
  OfertasRow createRow(Map<String, dynamic> data) => OfertasRow(data);
}

class OfertasRow extends SupabaseDataRow {
  OfertasRow(super.data);

  @override
  SupabaseTable get table => OfertasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  double? get comissao => getField<double>('comissao');
  set comissao(double? value) => setField<double>('comissao', value);

  bool? get disponivel => getField<bool>('disponivel');
  set disponivel(bool? value) => setField<bool>('disponivel', value);

  String? get nomeOferta => getField<String>('nome_oferta');
  set nomeOferta(String? value) => setField<String>('nome_oferta', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  double? get quantidade => getField<double>('quantidade');
  set quantidade(double? value) => setField<double>('quantidade', value);

  String? get uuidOferta => getField<String>('uuid_oferta');
  set uuidOferta(String? value) => setField<String>('uuid_oferta', value);
}
