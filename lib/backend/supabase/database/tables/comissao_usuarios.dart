import '../database.dart';

class ComissaoUsuariosTable extends SupabaseTable<ComissaoUsuariosRow> {
  @override
  String get tableName => 'comissao_usuarios';

  @override
  ComissaoUsuariosRow createRow(Map<String, dynamic> data) =>
      ComissaoUsuariosRow(data);
}

class ComissaoUsuariosRow extends SupabaseDataRow {
  ComissaoUsuariosRow(super.data);

  @override
  SupabaseTable get table => ComissaoUsuariosTable();

  int? get idUsuarios => getField<int>('id_usuarios');
  set idUsuarios(int? value) => setField<int>('id_usuarios', value);

  double? get totalComissao => getField<double>('total_comissao');
  set totalComissao(double? value) => setField<double>('total_comissao', value);
}
