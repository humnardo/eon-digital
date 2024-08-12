import '../database.dart';

class ViewUsuariosTable extends SupabaseTable<ViewUsuariosRow> {
  @override
  String get tableName => 'view_usuarios';

  @override
  ViewUsuariosRow createRow(Map<String, dynamic> data) => ViewUsuariosRow(data);
}

class ViewUsuariosRow extends SupabaseDataRow {
  ViewUsuariosRow(super.data);

  @override
  SupabaseTable get table => ViewUsuariosTable();

  int? get idUsuarios => getField<int>('id_usuarios');
  set idUsuarios(int? value) => setField<int>('id_usuarios', value);
}
