import '../database.dart';

class MetodoPagamentoCountTable extends SupabaseTable<MetodoPagamentoCountRow> {
  @override
  String get tableName => 'metodo_pagamento_count';

  @override
  MetodoPagamentoCountRow createRow(Map<String, dynamic> data) =>
      MetodoPagamentoCountRow(data);
}

class MetodoPagamentoCountRow extends SupabaseDataRow {
  MetodoPagamentoCountRow(super.data);

  @override
  SupabaseTable get table => MetodoPagamentoCountTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get metodoPagamento => getField<int>('metodo_pagamento');
  set metodoPagamento(int? value) => setField<int>('metodo_pagamento', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  int? get vendedor => getField<int>('vendedor');
  set vendedor(int? value) => setField<int>('vendedor', value);
}
