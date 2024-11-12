import '../database.dart';

class CriarPagamentoMercadopagoTable
    extends SupabaseTable<CriarPagamentoMercadopagoRow> {
  @override
  String get tableName => 'criar_pagamento_mercadopago';

  @override
  CriarPagamentoMercadopagoRow createRow(Map<String, dynamic> data) =>
      CriarPagamentoMercadopagoRow(data);
}

class CriarPagamentoMercadopagoRow extends SupabaseDataRow {
  CriarPagamentoMercadopagoRow(super.data);

  @override
  SupabaseTable get table => CriarPagamentoMercadopagoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get xIdempotencyKey => getField<String>('x_idempotency_key');
  set xIdempotencyKey(String? value) =>
      setField<String>('x_idempotency_key', value);

  String? get codigoPix => getField<String>('codigo_pix');
  set codigoPix(String? value) => setField<String>('codigo_pix', value);

  int? get idMercadopago => getField<int>('id_mercadopago');
  set idMercadopago(int? value) => setField<int>('id_mercadopago', value);

  String? get statusPagamento => getField<String>('status_pagamento');
  set statusPagamento(String? value) =>
      setField<String>('status_pagamento', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  DateTime? get vencimento => getField<DateTime>('vencimento');
  set vencimento(DateTime? value) => setField<DateTime>('vencimento', value);

  int? get idRecrutador => getField<int>('id_recrutador');
  set idRecrutador(int? value) => setField<int>('id_recrutador', value);

  double? get comissaoRecrutador => getField<double>('comissao_recrutador');
  set comissaoRecrutador(double? value) =>
      setField<double>('comissao_recrutador', value);

  int? get metodoPagamento => getField<int>('metodo_pagamento');
  set metodoPagamento(int? value) => setField<int>('metodo_pagamento', value);

  double? get comissaoProdutor => getField<double>('comissao_produtor');
  set comissaoProdutor(double? value) =>
      setField<double>('comissao_produtor', value);

  double? get comissaoCooprodutor => getField<double>('comissao_cooprodutor');
  set comissaoCooprodutor(double? value) =>
      setField<double>('comissao_cooprodutor', value);
}
