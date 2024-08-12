import '../database.dart';

class StatusAfiliacaoTable extends SupabaseTable<StatusAfiliacaoRow> {
  @override
  String get tableName => 'status_afiliacao';

  @override
  StatusAfiliacaoRow createRow(Map<String, dynamic> data) =>
      StatusAfiliacaoRow(data);
}

class StatusAfiliacaoRow extends SupabaseDataRow {
  StatusAfiliacaoRow(super.data);

  @override
  SupabaseTable get table => StatusAfiliacaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
