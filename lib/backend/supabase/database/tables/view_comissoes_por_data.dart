import '../database.dart';

class ViewComissoesPorDataTable extends SupabaseTable<ViewComissoesPorDataRow> {
  @override
  String get tableName => 'view_comissoes_por_data';

  @override
  ViewComissoesPorDataRow createRow(Map<String, dynamic> data) =>
      ViewComissoesPorDataRow(data);
}

class ViewComissoesPorDataRow extends SupabaseDataRow {
  ViewComissoesPorDataRow(super.data);

  @override
  SupabaseTable get table => ViewComissoesPorDataTable();

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  double? get totalComissaoVendedor =>
      getField<double>('total_comissao_vendedor');
  set totalComissaoVendedor(double? value) =>
      setField<double>('total_comissao_vendedor', value);

  double? get totalComissaoProdutor =>
      getField<double>('total_comissao_produtor');
  set totalComissaoProdutor(double? value) =>
      setField<double>('total_comissao_produtor', value);

  double? get totalComissaoProdutorStatus4 =>
      getField<double>('total_comissao_produtor_status_4');
  set totalComissaoProdutorStatus4(double? value) =>
      setField<double>('total_comissao_produtor_status_4', value);

  double? get totalComissaoVendedorStatus4 =>
      getField<double>('total_comissao_vendedor_status_4');
  set totalComissaoVendedorStatus4(double? value) =>
      setField<double>('total_comissao_vendedor_status_4', value);

  double? get totalComissoes => getField<double>('total_comissoes');
  set totalComissoes(double? value) =>
      setField<double>('total_comissoes', value);
}
