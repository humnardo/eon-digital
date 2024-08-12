import '../database.dart';

class DataEntregaGroupTesteTable
    extends SupabaseTable<DataEntregaGroupTesteRow> {
  @override
  String get tableName => 'data_entrega_group_teste';

  @override
  DataEntregaGroupTesteRow createRow(Map<String, dynamic> data) =>
      DataEntregaGroupTesteRow(data);
}

class DataEntregaGroupTesteRow extends SupabaseDataRow {
  DataEntregaGroupTesteRow(super.data);

  @override
  SupabaseTable get table => DataEntregaGroupTesteTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  double? get sum => getField<double>('sum');
  set sum(double? value) => setField<double>('sum', value);

  double? get sumprodutor => getField<double>('sumprodutor');
  set sumprodutor(double? value) => setField<double>('sumprodutor', value);

  int? get count => getField<int>('count');
  set count(int? value) => setField<int>('count', value);

  int? get idMetodopagamento => getField<int>('id_metodopagamento');
  set idMetodopagamento(int? value) =>
      setField<int>('id_metodopagamento', value);

  String? get nomeMetodoPagamento => getField<String>('nome_metodo_pagamento');
  set nomeMetodoPagamento(String? value) =>
      setField<String>('nome_metodo_pagamento', value);

  String? get nomeStatuspedido => getField<String>('nome_statuspedido');
  set nomeStatuspedido(String? value) =>
      setField<String>('nome_statuspedido', value);

  String? get nomeCentroLogistico => getField<String>('nome_centro_logistico');
  set nomeCentroLogistico(String? value) =>
      setField<String>('nome_centro_logistico', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  int? get vendedor => getField<int>('vendedor');
  set vendedor(int? value) => setField<int>('vendedor', value);

  String? get codigoVendedor => getField<String>('codigo_vendedor');
  set codigoVendedor(String? value) =>
      setField<String>('codigo_vendedor', value);

  int? get produto => getField<int>('produto');
  set produto(int? value) => setField<int>('produto', value);

  int? get idProdutor => getField<int>('id_produtor');
  set idProdutor(int? value) => setField<int>('id_produtor', value);

  DateTime? get creationDate => getField<DateTime>('creation_date');
  set creationDate(DateTime? value) =>
      setField<DateTime>('creation_date', value);
}
