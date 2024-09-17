import '../database.dart';

class SaquesTable extends SupabaseTable<SaquesRow> {
  @override
  String get tableName => 'saques';

  @override
  SaquesRow createRow(Map<String, dynamic> data) => SaquesRow(data);
}

class SaquesRow extends SupabaseDataRow {
  SaquesRow(super.data);

  @override
  SupabaseTable get table => SaquesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get agencia => getField<String>('agencia');
  set agencia(String? value) => setField<String>('agencia', value);

  String? get banco => getField<String>('banco');
  set banco(String? value) => setField<String>('banco', value);

  String? get chavePix => getField<String>('chave_pix');
  set chavePix(String? value) => setField<String>('chave_pix', value);

  String? get comprovante => getField<String>('comprovante');
  set comprovante(String? value) => setField<String>('comprovante', value);

  String? get conta => getField<String>('conta');
  set conta(String? value) => setField<String>('conta', value);

  DateTime? get horaPagamento => getField<DateTime>('hora_pagamento');
  set horaPagamento(DateTime? value) =>
      setField<DateTime>('hora_pagamento', value);

  int? get statusSaque => getField<int>('status_saque');
  set statusSaque(int? value) => setField<int>('status_saque', value);

  int? get tipoChavePix => getField<int>('tipo_chave_pix');
  set tipoChavePix(int? value) => setField<int>('tipo_chave_pix', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  double? get valorPagamento => getField<double>('valor_pagamento');
  set valorPagamento(double? value) =>
      setField<double>('valor_pagamento', value);

  double? get valorSaque => getField<double>('valor_saque');
  set valorSaque(double? value) => setField<double>('valor_saque', value);

  DateTime? get createDate => getField<DateTime>('create_date');
  set createDate(DateTime? value) => setField<DateTime>('create_date', value);
}
