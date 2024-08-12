import '../database.dart';

class StatusProdutoTable extends SupabaseTable<StatusProdutoRow> {
  @override
  String get tableName => 'status_produto';

  @override
  StatusProdutoRow createRow(Map<String, dynamic> data) =>
      StatusProdutoRow(data);
}

class StatusProdutoRow extends SupabaseDataRow {
  StatusProdutoRow(super.data);

  @override
  SupabaseTable get table => StatusProdutoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeStatus => getField<String>('nome_status');
  set nomeStatus(String? value) => setField<String>('nome_status', value);
}
