import '../database.dart';

class DataEntregaGroupTable extends SupabaseTable<DataEntregaGroupRow> {
  @override
  String get tableName => 'data_entrega_group';

  @override
  DataEntregaGroupRow createRow(Map<String, dynamic> data) =>
      DataEntregaGroupRow(data);
}

class DataEntregaGroupRow extends SupabaseDataRow {
  DataEntregaGroupRow(super.data);

  @override
  SupabaseTable get table => DataEntregaGroupTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get dataEntrega => getField<String>('data_entrega');
  set dataEntrega(String? value) => setField<String>('data_entrega', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);

  int? get metodoPagamento => getField<int>('metodo_pagamento');
  set metodoPagamento(int? value) => setField<int>('metodo_pagamento', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  int? get vendedor => getField<int>('vendedor');
  set vendedor(int? value) => setField<int>('vendedor', value);
}
