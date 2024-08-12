import '../database.dart';

class MetodoPagamentoTable extends SupabaseTable<MetodoPagamentoRow> {
  @override
  String get tableName => 'metodo_pagamento';

  @override
  MetodoPagamentoRow createRow(Map<String, dynamic> data) =>
      MetodoPagamentoRow(data);
}

class MetodoPagamentoRow extends SupabaseDataRow {
  MetodoPagamentoRow(super.data);

  @override
  SupabaseTable get table => MetodoPagamentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);
}
