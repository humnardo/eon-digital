import '../database.dart';

class UsuariosApagarTable extends SupabaseTable<UsuariosApagarRow> {
  @override
  String get tableName => 'usuarios_apagar';

  @override
  UsuariosApagarRow createRow(Map<String, dynamic> data) =>
      UsuariosApagarRow(data);
}

class UsuariosApagarRow extends SupabaseDataRow {
  UsuariosApagarRow(super.data);

  @override
  SupabaseTable get table => UsuariosApagarTable();

  int? get idUsuarios => getField<int>('id_usuarios');
  set idUsuarios(int? value) => setField<int>('id_usuarios', value);

  String? get uniqueIdAntigo => getField<String>('unique_id_antigo');
  set uniqueIdAntigo(String? value) =>
      setField<String>('unique_id_antigo', value);
}
