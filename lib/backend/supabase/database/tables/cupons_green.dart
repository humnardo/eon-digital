import '../database.dart';

class CuponsGreenTable extends SupabaseTable<CuponsGreenRow> {
  @override
  String get tableName => 'cupons_green';

  @override
  CuponsGreenRow createRow(Map<String, dynamic> data) => CuponsGreenRow(data);
}

class CuponsGreenRow extends SupabaseDataRow {
  CuponsGreenRow(super.data);

  @override
  SupabaseTable get table => CuponsGreenTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get sellerId => getField<int>('seller_id');
  set sellerId(int? value) => setField<int>('seller_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  bool? get onlyProducts => getField<bool>('only_products');
  set onlyProducts(bool? value) => setField<bool>('only_products', value);

  int? get limit => getField<int>('limit');
  set limit(int? value) => setField<int>('limit', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
