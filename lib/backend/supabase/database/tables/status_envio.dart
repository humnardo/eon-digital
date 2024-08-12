import '../database.dart';

class StatusEnvioTable extends SupabaseTable<StatusEnvioRow> {
  @override
  String get tableName => 'status_envio';

  @override
  StatusEnvioRow createRow(Map<String, dynamic> data) => StatusEnvioRow(data);
}

class StatusEnvioRow extends SupabaseDataRow {
  StatusEnvioRow(super.data);

  @override
  SupabaseTable get table => StatusEnvioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);
}
