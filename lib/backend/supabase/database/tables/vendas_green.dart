import '../database.dart';

class VendasGreenTable extends SupabaseTable<VendasGreenRow> {
  @override
  String get tableName => 'vendas_green';

  @override
  VendasGreenRow createRow(Map<String, dynamic> data) => VendasGreenRow(data);
}

class VendasGreenRow extends SupabaseDataRow {
  VendasGreenRow(super.data);

  @override
  SupabaseTable get table => VendasGreenTable();

  String? get oldStatus => getField<String>('old_status');
  set oldStatus(String? value) => setField<String>('old_status', value);

  String? get currentStatus => getField<String>('current_status');
  set currentStatus(String? value) => setField<String>('current_status', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get event => getField<String>('event');
  set event(String? value) => setField<String>('event', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get sellerId => getField<int>('seller_id');
  set sellerId(int? value) => setField<int>('seller_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get method => getField<String>('method');
  set method(String? value) => setField<String>('method', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  int? get installments => getField<int>('installments');
  set installments(int? value) => setField<int>('installments', value);

  String? get saleType => getField<String>('sale_type');
  set saleType(String? value) => setField<String>('sale_type', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
