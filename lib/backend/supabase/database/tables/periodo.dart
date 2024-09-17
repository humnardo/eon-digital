import '../database.dart';

class PeriodoTable extends SupabaseTable<PeriodoRow> {
  @override
  String get tableName => 'periodo';

  @override
  PeriodoRow createRow(Map<String, dynamic> data) => PeriodoRow(data);
}

class PeriodoRow extends SupabaseDataRow {
  PeriodoRow(super.data);

  @override
  SupabaseTable get table => PeriodoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
