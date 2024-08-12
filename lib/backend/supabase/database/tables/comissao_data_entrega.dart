import '../database.dart';

class ComissaoDataEntregaTable extends SupabaseTable<ComissaoDataEntregaRow> {
  @override
  String get tableName => 'comissao_data_entrega';

  @override
  ComissaoDataEntregaRow createRow(Map<String, dynamic> data) =>
      ComissaoDataEntregaRow(data);
}

class ComissaoDataEntregaRow extends SupabaseDataRow {
  ComissaoDataEntregaRow(super.data);

  @override
  SupabaseTable get table => ComissaoDataEntregaTable();

  String? get dataEntrega => getField<String>('data_entrega');
  set dataEntrega(String? value) => setField<String>('data_entrega', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);
}
