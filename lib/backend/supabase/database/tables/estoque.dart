import '../database.dart';

class EstoqueTable extends SupabaseTable<EstoqueRow> {
  @override
  String get tableName => 'estoque';

  @override
  EstoqueRow createRow(Map<String, dynamic> data) => EstoqueRow(data);
}

class EstoqueRow extends SupabaseDataRow {
  EstoqueRow(super.data);

  @override
  SupabaseTable get table => EstoqueTable();

  int get idEstoque => getField<int>('id_estoque')!;
  set idEstoque(int value) => setField<int>('id_estoque', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  String? get codigoRastreio => getField<String>('codigo_rastreio');
  set codigoRastreio(String? value) =>
      setField<String>('codigo_rastreio', value);

  DateTime? get dataChegada => getField<DateTime>('data_chegada');
  set dataChegada(DateTime? value) => setField<DateTime>('data_chegada', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idProdutor => getField<int>('id_produtor');
  set idProdutor(int? value) => setField<int>('id_produtor', value);

  double? get qtdEnviada => getField<double>('qtd_enviada');
  set qtdEnviada(double? value) => setField<double>('qtd_enviada', value);

  int? get idStatusEnvio => getField<int>('id_status_envio');
  set idStatusEnvio(int? value) => setField<int>('id_status_envio', value);

  String? get transportadora => getField<String>('transportadora');
  set transportadora(String? value) =>
      setField<String>('transportadora', value);
}
