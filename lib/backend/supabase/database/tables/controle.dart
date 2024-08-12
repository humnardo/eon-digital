import '../database.dart';

class ControleTable extends SupabaseTable<ControleRow> {
  @override
  String get tableName => 'controle';

  @override
  ControleRow createRow(Map<String, dynamic> data) => ControleRow(data);
}

class ControleRow extends SupabaseDataRow {
  ControleRow(super.data);

  @override
  SupabaseTable get table => ControleTable();

  int get idControle => getField<int>('id_controle')!;
  set idControle(int value) => setField<int>('id_controle', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  DateTime? get dataEntrega => getField<DateTime>('data_entrega');
  set dataEntrega(DateTime? value) => setField<DateTime>('data_entrega', value);

  int? get idMotoboy => getField<int>('id_motoboy');
  set idMotoboy(int? value) => setField<int>('id_motoboy', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  double? get qtd => getField<double>('qtd');
  set qtd(double? value) => setField<double>('qtd', value);
}
