import '../database.dart';

class ComissaoPersonalizadaTable
    extends SupabaseTable<ComissaoPersonalizadaRow> {
  @override
  String get tableName => 'comissao_personalizada';

  @override
  ComissaoPersonalizadaRow createRow(Map<String, dynamic> data) =>
      ComissaoPersonalizadaRow(data);
}

class ComissaoPersonalizadaRow extends SupabaseDataRow {
  ComissaoPersonalizadaRow(super.data);

  @override
  SupabaseTable get table => ComissaoPersonalizadaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idAfiliado => getField<int>('id_afiliado');
  set idAfiliado(int? value) => setField<int>('id_afiliado', value);

  double? get porcentagem => getField<double>('porcentagem');
  set porcentagem(double? value) => setField<double>('porcentagem', value);
}
