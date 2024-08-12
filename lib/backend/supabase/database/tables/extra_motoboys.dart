import '../database.dart';

class ExtraMotoboysTable extends SupabaseTable<ExtraMotoboysRow> {
  @override
  String get tableName => 'extra_motoboys';

  @override
  ExtraMotoboysRow createRow(Map<String, dynamic> data) =>
      ExtraMotoboysRow(data);
}

class ExtraMotoboysRow extends SupabaseDataRow {
  ExtraMotoboysRow(super.data);

  @override
  SupabaseTable get table => ExtraMotoboysTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get motoboy => getField<int>('motoboy');
  set motoboy(int? value) => setField<int>('motoboy', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);
}
