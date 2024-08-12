import '../database.dart';

class CepOffTable extends SupabaseTable<CepOffRow> {
  @override
  String get tableName => 'cep_off';

  @override
  CepOffRow createRow(Map<String, dynamic> data) => CepOffRow(data);
}

class CepOffRow extends SupabaseDataRow {
  CepOffRow(super.data);

  @override
  SupabaseTable get table => CepOffTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get idCentroLogistico => getField<int>('id_centro_logistico');
  set idCentroLogistico(int? value) =>
      setField<int>('id_centro_logistico', value);

  String? get ceps => getField<String>('ceps');
  set ceps(String? value) => setField<String>('ceps', value);
}
