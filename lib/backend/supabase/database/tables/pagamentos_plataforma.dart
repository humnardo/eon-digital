import '../database.dart';

class PagamentosPlataformaTable extends SupabaseTable<PagamentosPlataformaRow> {
  @override
  String get tableName => 'pagamentos_plataforma';

  @override
  PagamentosPlataformaRow createRow(Map<String, dynamic> data) =>
      PagamentosPlataformaRow(data);
}

class PagamentosPlataformaRow extends SupabaseDataRow {
  PagamentosPlataformaRow(super.data);

  @override
  SupabaseTable get table => PagamentosPlataformaTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  int? get idRecrutador => getField<int>('id_recrutador');
  set idRecrutador(int? value) => setField<int>('id_recrutador', value);

  double? get comissaoRecrutador => getField<double>('comissao_recrutador');
  set comissaoRecrutador(double? value) =>
      setField<double>('comissao_recrutador', value);

  int? get metodoPagamento => getField<int>('metodo_pagamento');
  set metodoPagamento(int? value) => setField<int>('metodo_pagamento', value);

  double? get comissaoCooprodutor => getField<double>('comissao_cooprodutor');
  set comissaoCooprodutor(double? value) =>
      setField<double>('comissao_cooprodutor', value);

  double? get comissaoProdutor => getField<double>('comissao_produtor');
  set comissaoProdutor(double? value) =>
      setField<double>('comissao_produtor', value);
}
