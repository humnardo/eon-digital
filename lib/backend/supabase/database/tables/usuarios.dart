import '../database.dart';

class UsuariosTable extends SupabaseTable<UsuariosRow> {
  @override
  String get tableName => 'usuarios';

  @override
  UsuariosRow createRow(Map<String, dynamic> data) => UsuariosRow(data);
}

class UsuariosRow extends SupabaseDataRow {
  UsuariosRow(super.data);

  @override
  SupabaseTable get table => UsuariosTable();

  int get idUsuarios => getField<int>('id_usuarios')!;
  set idUsuarios(int value) => setField<int>('id_usuarios', value);

  bool? get adm => getField<bool>('adm');
  set adm(bool? value) => setField<bool>('adm', value);

  bool? get afiliado => getField<bool>('afiliado');
  set afiliado(bool? value) => setField<bool>('afiliado', value);

  String? get agencia => getField<String>('agencia');
  set agencia(String? value) => setField<String>('agencia', value);

  String? get banco => getField<String>('banco');
  set banco(String? value) => setField<String>('banco', value);

  int? get idCentroDistribuicao => getField<int>('id_centro_distribuicao');
  set idCentroDistribuicao(int? value) =>
      setField<int>('id_centro_distribuicao', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  String? get chavePix => getField<String>('chave_pix');
  set chavePix(String? value) => setField<String>('chave_pix', value);

  String? get conta => getField<String>('conta');
  set conta(String? value) => setField<String>('conta', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  bool? get gerenteDePraca => getField<bool>('gerente_de_praca');
  set gerenteDePraca(bool? value) => setField<bool>('gerente_de_praca', value);

  bool? get motoboy => getField<bool>('motoboy');
  set motoboy(bool? value) => setField<bool>('motoboy', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  bool? get pago => getField<bool>('pago');
  set pago(bool? value) => setField<bool>('pago', value);

  int? get idPerfil => getField<int>('id_perfil');
  set idPerfil(int? value) => setField<int>('id_perfil', value);

  bool? get produtor => getField<bool>('produtor');
  set produtor(bool? value) => setField<bool>('produtor', value);

  int? get tipoDeChavePix => getField<int>('tipo_de_chave_pix');
  set tipoDeChavePix(int? value) => setField<int>('tipo_de_chave_pix', value);

  String? get whatsApp => getField<String>('whatsApp');
  set whatsApp(String? value) => setField<String>('whatsApp', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get uniqueIdAntigo => getField<String>('unique_id_antigo');
  set uniqueIdAntigo(String? value) =>
      setField<String>('unique_id_antigo', value);

  String? get tempIdPerfil => getField<String>('temp_id_perfil');
  set tempIdPerfil(String? value) => setField<String>('temp_id_perfil', value);

  String? get uuidAuthUser => getField<String>('uuid_auth_user');
  set uuidAuthUser(String? value) => setField<String>('uuid_auth_user', value);

  bool? get motoboyTrabalhando => getField<bool>('motoboy_trabalhando');
  set motoboyTrabalhando(bool? value) =>
      setField<bool>('motoboy_trabalhando', value);

  int? get indicou => getField<int>('indicou');
  set indicou(int? value) => setField<int>('indicou', value);

  double? get comissaoIndicacao => getField<double>('comissao_indicacao');
  set comissaoIndicacao(double? value) =>
      setField<double>('comissao_indicacao', value);

  DateTime? get ultimoPagamento => getField<DateTime>('ultimo_pagamento');
  set ultimoPagamento(DateTime? value) =>
      setField<DateTime>('ultimo_pagamento', value);

  DateTime? get validadePlano => getField<DateTime>('validade_plano');
  set validadePlano(DateTime? value) =>
      setField<DateTime>('validade_plano', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);
}
