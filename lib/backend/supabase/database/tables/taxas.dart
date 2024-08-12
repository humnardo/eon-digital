import '../database.dart';

class TaxasTable extends SupabaseTable<TaxasRow> {
  @override
  String get tableName => 'taxas';

  @override
  TaxasRow createRow(Map<String, dynamic> data) => TaxasRow(data);
}

class TaxasRow extends SupabaseDataRow {
  TaxasRow(super.data);

  @override
  SupabaseTable get table => TaxasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get nomeTaxa => getField<String>('nome_taxa');
  set nomeTaxa(String? value) => setField<String>('nome_taxa', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
