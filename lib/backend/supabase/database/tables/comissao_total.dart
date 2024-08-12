import '../database.dart';

class ComissaoTotalTable extends SupabaseTable<ComissaoTotalRow> {
  @override
  String get tableName => 'comissao_total';

  @override
  ComissaoTotalRow createRow(Map<String, dynamic> data) =>
      ComissaoTotalRow(data);
}

class ComissaoTotalRow extends SupabaseDataRow {
  ComissaoTotalRow(super.data);

  @override
  SupabaseTable get table => ComissaoTotalTable();

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);
}
