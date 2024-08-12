import '../database.dart';

class AfiliacoesTable extends SupabaseTable<AfiliacoesRow> {
  @override
  String get tableName => 'afiliacoes';

  @override
  AfiliacoesRow createRow(Map<String, dynamic> data) => AfiliacoesRow(data);
}

class AfiliacoesRow extends SupabaseDataRow {
  AfiliacoesRow(super.data);

  @override
  SupabaseTable get table => AfiliacoesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idProdutor => getField<int>('id_produtor');
  set idProdutor(int? value) => setField<int>('id_produtor', value);

  int? get statusAfiliacao => getField<int>('status_afiliacao');
  set statusAfiliacao(int? value) => setField<int>('status_afiliacao', value);
}
