import '../database.dart';

class WebhookTesteTable extends SupabaseTable<WebhookTesteRow> {
  @override
  String get tableName => 'webhook_teste';

  @override
  WebhookTesteRow createRow(Map<String, dynamic> data) => WebhookTesteRow(data);
}

class WebhookTesteRow extends SupabaseDataRow {
  WebhookTesteRow(super.data);

  @override
  SupabaseTable get table => WebhookTesteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get linkWebhook => getField<String>('link_webhook');
  set linkWebhook(String? value) => setField<String>('link_webhook', value);

  bool? get statusTeste => getField<bool>('status_teste');
  set statusTeste(bool? value) => setField<bool>('status_teste', value);

  String? get responseTeste => getField<String>('response_teste');
  set responseTeste(String? value) => setField<String>('response_teste', value);
}
