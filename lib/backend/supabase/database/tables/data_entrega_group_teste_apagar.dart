import '../database.dart';

class DataEntregaGroupTesteApagarTable
    extends SupabaseTable<DataEntregaGroupTesteApagarRow> {
  @override
  String get tableName => 'data_entrega_group_teste_apagar';

  @override
  DataEntregaGroupTesteApagarRow createRow(Map<String, dynamic> data) =>
      DataEntregaGroupTesteApagarRow(data);
}

class DataEntregaGroupTesteApagarRow extends SupabaseDataRow {
  DataEntregaGroupTesteApagarRow(super.data);

  @override
  SupabaseTable get table => DataEntregaGroupTesteApagarTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);

  int? get idMetodopagamento => getField<int>('id_metodopagamento');
  set idMetodopagamento(int? value) =>
      setField<int>('id_metodopagamento', value);

  String? get nomeMetodoPagamento => getField<String>('nome_metodo_pagamento');
  set nomeMetodoPagamento(String? value) =>
      setField<String>('nome_metodo_pagamento', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  int? get vendedor => getField<int>('vendedor');
  set vendedor(int? value) => setField<int>('vendedor', value);
}
