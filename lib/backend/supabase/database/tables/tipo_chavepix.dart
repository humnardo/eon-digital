import '../database.dart';

class TipoChavepixTable extends SupabaseTable<TipoChavepixRow> {
  @override
  String get tableName => 'tipo_chavepix';

  @override
  TipoChavepixRow createRow(Map<String, dynamic> data) => TipoChavepixRow(data);
}

class TipoChavepixRow extends SupabaseDataRow {
  TipoChavepixRow(super.data);

  @override
  SupabaseTable get table => TipoChavepixTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
