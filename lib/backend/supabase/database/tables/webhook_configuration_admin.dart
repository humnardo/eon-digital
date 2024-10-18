import '../database.dart';

class WebhookConfigurationAdminTable
    extends SupabaseTable<WebhookConfigurationAdminRow> {
  @override
  String get tableName => 'webhook_configuration_admin';

  @override
  WebhookConfigurationAdminRow createRow(Map<String, dynamic> data) =>
      WebhookConfigurationAdminRow(data);
}

class WebhookConfigurationAdminRow extends SupabaseDataRow {
  WebhookConfigurationAdminRow(super.data);

  @override
  SupabaseTable get table => WebhookConfigurationAdminTable();

  int get idWebhook => getField<int>('id_webhook')!;
  set idWebhook(int value) => setField<int>('id_webhook', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeWebhook => getField<String>('nome_webhook');
  set nomeWebhook(String? value) => setField<String>('nome_webhook', value);

  String? get linkWebhook => getField<String>('link_webhook');
  set linkWebhook(String? value) => setField<String>('link_webhook', value);

  bool? get webhookAtivo => getField<bool>('webhook_ativo');
  set webhookAtivo(bool? value) => setField<bool>('webhook_ativo', value);

  int? get statusPedido => getField<int>('status_pedido');
  set statusPedido(int? value) => setField<int>('status_pedido', value);
}
