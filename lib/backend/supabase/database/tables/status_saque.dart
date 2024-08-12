import '../database.dart';

class StatusSaqueTable extends SupabaseTable<StatusSaqueRow> {
  @override
  String get tableName => 'status_saque';

  @override
  StatusSaqueRow createRow(Map<String, dynamic> data) => StatusSaqueRow(data);
}

class StatusSaqueRow extends SupabaseDataRow {
  StatusSaqueRow(super.data);

  @override
  SupabaseTable get table => StatusSaqueTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
