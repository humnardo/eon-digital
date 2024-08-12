import '../database.dart';

class PerfilTable extends SupabaseTable<PerfilRow> {
  @override
  String get tableName => 'perfil';

  @override
  PerfilRow createRow(Map<String, dynamic> data) => PerfilRow(data);
}

class PerfilRow extends SupabaseDataRow {
  PerfilRow(super.data);

  @override
  SupabaseTable get table => PerfilTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
