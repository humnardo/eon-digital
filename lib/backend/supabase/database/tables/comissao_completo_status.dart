import '../database.dart';

class ComissaoCompletoStatusTable
    extends SupabaseTable<ComissaoCompletoStatusRow> {
  @override
  String get tableName => 'comissao_completo_status';

  @override
  ComissaoCompletoStatusRow createRow(Map<String, dynamic> data) =>
      ComissaoCompletoStatusRow(data);
}

class ComissaoCompletoStatusRow extends SupabaseDataRow {
  ComissaoCompletoStatusRow(super.data);

  @override
  SupabaseTable get table => ComissaoCompletoStatusTable();

  String? get dataEntrega => getField<String>('data_entrega');
  set dataEntrega(String? value) => setField<String>('data_entrega', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);

  int? get produto => getField<int>('produto');
  set produto(int? value) => setField<int>('produto', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  int? get vendedor => getField<int>('vendedor');
  set vendedor(int? value) => setField<int>('vendedor', value);

  int? get metodoPagamento => getField<int>('metodo_pagamento');
  set metodoPagamento(int? value) => setField<int>('metodo_pagamento', value);
}
