import '../database.dart';

class TotalSacadoTable extends SupabaseTable<TotalSacadoRow> {
  @override
  String get tableName => 'total_sacado';

  @override
  TotalSacadoRow createRow(Map<String, dynamic> data) => TotalSacadoRow(data);
}

class TotalSacadoRow extends SupabaseDataRow {
  TotalSacadoRow(super.data);

  @override
  SupabaseTable get table => TotalSacadoTable();

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);
}
