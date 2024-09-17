import '../database.dart';

class WebhookLogsTable extends SupabaseTable<WebhookLogsRow> {
  @override
  String get tableName => 'webhook_logs';

  @override
  WebhookLogsRow createRow(Map<String, dynamic> data) => WebhookLogsRow(data);
}

class WebhookLogsRow extends SupabaseDataRow {
  WebhookLogsRow(super.data);

  @override
  SupabaseTable get table => WebhookLogsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get pedidoId => getField<int>('pedido_id');
  set pedidoId(int? value) => setField<int>('pedido_id', value);

  dynamic get response => getField<dynamic>('response');
  set response(dynamic value) => setField<dynamic>('response', value);

  DateTime? get logTime => getField<DateTime>('log_time');
  set logTime(DateTime? value) => setField<DateTime>('log_time', value);
}
