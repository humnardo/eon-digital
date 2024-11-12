import '../database.dart';

class MetasDeVendasGreenTable extends SupabaseTable<MetasDeVendasGreenRow> {
  @override
  String get tableName => 'metas_de_vendas_green';

  @override
  MetasDeVendasGreenRow createRow(Map<String, dynamic> data) =>
      MetasDeVendasGreenRow(data);
}

class MetasDeVendasGreenRow extends SupabaseDataRow {
  MetasDeVendasGreenRow(super.data);

  @override
  SupabaseTable get table => MetasDeVendasGreenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get saleId => getField<int>('sale_id');
  set saleId(int? value) => setField<int>('sale_id', value);

  String? get metaKey => getField<String>('meta_key');
  set metaKey(String? value) => setField<String>('meta_key', value);

  String? get metaValue => getField<String>('meta_value');
  set metaValue(String? value) => setField<String>('meta_value', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
