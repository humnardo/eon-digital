import '../database.dart';

class WebhookUrlTable extends SupabaseTable<WebhookUrlRow> {
  @override
  String get tableName => 'webhook_url';

  @override
  WebhookUrlRow createRow(Map<String, dynamic> data) => WebhookUrlRow(data);
}

class WebhookUrlRow extends SupabaseDataRow {
  WebhookUrlRow(super.data);

  @override
  SupabaseTable get table => WebhookUrlTable();

  String? get linkWebhook => getField<String>('link_webhook');
  set linkWebhook(String? value) => setField<String>('link_webhook', value);
}
