import '../database.dart';

class CentroDistribuicaoTable extends SupabaseTable<CentroDistribuicaoRow> {
  @override
  String get tableName => 'centro_distribuicao';

  @override
  CentroDistribuicaoRow createRow(Map<String, dynamic> data) =>
      CentroDistribuicaoRow(data);
}

class CentroDistribuicaoRow extends SupabaseDataRow {
  CentroDistribuicaoRow(super.data);

  @override
  SupabaseTable get table => CentroDistribuicaoTable();

  int get idCentroLogistico => getField<int>('id_centro_logistico')!;
  set idCentroLogistico(int value) =>
      setField<int>('id_centro_logistico', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
