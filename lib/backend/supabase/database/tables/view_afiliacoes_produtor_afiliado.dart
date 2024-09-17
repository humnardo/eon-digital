import '../database.dart';

class ViewAfiliacoesProdutorAfiliadoTable
    extends SupabaseTable<ViewAfiliacoesProdutorAfiliadoRow> {
  @override
  String get tableName => 'view_afiliacoes_produtor_afiliado';

  @override
  ViewAfiliacoesProdutorAfiliadoRow createRow(Map<String, dynamic> data) =>
      ViewAfiliacoesProdutorAfiliadoRow(data);
}

class ViewAfiliacoesProdutorAfiliadoRow extends SupabaseDataRow {
  ViewAfiliacoesProdutorAfiliadoRow(super.data);

  @override
  SupabaseTable get table => ViewAfiliacoesProdutorAfiliadoTable();

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);
}
