import '../database.dart';

class PedidosTable extends SupabaseTable<PedidosRow> {
  @override
  String get tableName => 'pedidos';

  @override
  PedidosRow createRow(Map<String, dynamic> data) => PedidosRow(data);
}

class PedidosRow extends SupabaseDataRow {
  PedidosRow(super.data);

  @override
  SupabaseTable get table => PedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  double? get comissaoMotoboy => getField<double>('comissao_motoboy');
  set comissaoMotoboy(double? value) =>
      setField<double>('comissao_motoboy', value);

  double? get comissaoProdutor => getField<double>('comissao_produtor');
  set comissaoProdutor(double? value) =>
      setField<double>('comissao_produtor', value);

  double? get comissaoVendedor => getField<double>('comissao_vendedor');
  set comissaoVendedor(double? value) =>
      setField<double>('comissao_vendedor', value);

  String? get complemento => getField<String>('complemento');
  set complemento(String? value) => setField<String>('complemento', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  double? get dinheiro => getField<double>('dinheiro');
  set dinheiro(double? value) => setField<double>('dinheiro', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get fotoCasa => getField<String>('foto_casa');
  set fotoCasa(String? value) => setField<String>('foto_casa', value);

  bool? get itemVolta => getField<bool>('item_volta');
  set itemVolta(bool? value) => setField<bool>('item_volta', value);

  int? get motoboy => getField<int>('motoboy');
  set motoboy(int? value) => setField<int>('motoboy', value);

  int? get metodoPagamento => getField<int>('metodo_pagamento');
  set metodoPagamento(int? value) => setField<int>('metodo_pagamento', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  String? get numeroEndereco => getField<String>('numero_endereco');
  set numeroEndereco(String? value) =>
      setField<String>('numero_endereco', value);

  String? get obs => getField<String>('obs');
  set obs(String? value) => setField<String>('obs', value);

  int? get oferta => getField<int>('oferta');
  set oferta(int? value) => setField<int>('oferta', value);

  bool? get pedidoConfirmado => getField<bool>('pedido_confirmado');
  set pedidoConfirmado(bool? value) =>
      setField<bool>('pedido_confirmado', value);

  int? get periodo => getField<int>('periodo');
  set periodo(int? value) => setField<int>('periodo', value);

  int? get produto => getField<int>('produto');
  set produto(int? value) => setField<int>('produto', value);

  int? get idProdutor => getField<int>('id_produtor');
  set idProdutor(int? value) => setField<int>('id_produtor', value);

  double? get qtd => getField<double>('qtd');
  set qtd(double? value) => setField<double>('qtd', value);

  int? get responsavel => getField<int>('responsavel');
  set responsavel(int? value) => setField<int>('responsavel', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);

  double? get taxaEntrega => getField<double>('taxa_entrega');
  set taxaEntrega(double? value) => setField<double>('taxa_entrega', value);

  double? get taxaPlataforma => getField<double>('taxa_plataforma');
  set taxaPlataforma(double? value) =>
      setField<double>('taxa_plataforma', value);

  bool? get trocaDevolucao => getField<bool>('troca_devolucao');
  set trocaDevolucao(bool? value) => setField<bool>('troca_devolucao', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  int? get vendedor => getField<int>('vendedor');
  set vendedor(int? value) => setField<int>('vendedor', value);

  String? get whatsappPedido => getField<String>('whatsapp_pedido');
  set whatsappPedido(String? value) =>
      setField<String>('whatsapp_pedido', value);

  DateTime? get creationDate => getField<DateTime>('creation_date');
  set creationDate(DateTime? value) =>
      setField<DateTime>('creation_date', value);

  String? get codigoVendedor => getField<String>('codigo_vendedor');
  set codigoVendedor(String? value) =>
      setField<String>('codigo_vendedor', value);

  int? get idCentroDistribuicao => getField<int>('id_centro_distribuicao');
  set idCentroDistribuicao(int? value) =>
      setField<int>('id_centro_distribuicao', value);

  bool? get confirmacaoGerente => getField<bool>('confirmacao_gerente');
  set confirmacaoGerente(bool? value) =>
      setField<bool>('confirmacao_gerente', value);
}
