import '../database.dart';

class FormasPagamentoTable extends SupabaseTable<FormasPagamentoRow> {
  @override
  String get tableName => 'formas_pagamento';

  @override
  FormasPagamentoRow createRow(Map<String, dynamic> data) =>
      FormasPagamentoRow(data);
}

class FormasPagamentoRow extends SupabaseDataRow {
  FormasPagamentoRow(super.data);

  @override
  SupabaseTable get table => FormasPagamentoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);
}
