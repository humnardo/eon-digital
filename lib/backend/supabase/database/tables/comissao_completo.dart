import '../database.dart';

class ComissaoCompletoTable extends SupabaseTable<ComissaoCompletoRow> {
  @override
  String get tableName => 'comissao_completo';

  @override
  ComissaoCompletoRow createRow(Map<String, dynamic> data) =>
      ComissaoCompletoRow(data);
}

class ComissaoCompletoRow extends SupabaseDataRow {
  ComissaoCompletoRow(super.data);

  @override
  SupabaseTable get table => ComissaoCompletoTable();

  String? get dataEntrega => getField<String>('data_entrega');
  set dataEntrega(String? value) => setField<String>('data_entrega', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);
}
