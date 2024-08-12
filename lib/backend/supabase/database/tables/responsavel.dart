import '../database.dart';

class ResponsavelTable extends SupabaseTable<ResponsavelRow> {
  @override
  String get tableName => 'responsavel';

  @override
  ResponsavelRow createRow(Map<String, dynamic> data) => ResponsavelRow(data);
}

class ResponsavelRow extends SupabaseDataRow {
  ResponsavelRow(super.data);

  @override
  SupabaseTable get table => ResponsavelTable();

  int get idResponsavel => getField<int>('id_responsavel')!;
  set idResponsavel(int value) => setField<int>('id_responsavel', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
