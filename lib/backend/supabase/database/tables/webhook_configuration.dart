import '../database.dart';

class WebhookConfigurationTable extends SupabaseTable<WebhookConfigurationRow> {
  @override
  String get tableName => 'webhook_configuration';

  @override
  WebhookConfigurationRow createRow(Map<String, dynamic> data) =>
      WebhookConfigurationRow(data);
}

class WebhookConfigurationRow extends SupabaseDataRow {
  WebhookConfigurationRow(super.data);

  @override
  SupabaseTable get table => WebhookConfigurationTable();

  int get idWebhook => getField<int>('id_webhook')!;
  set idWebhook(int value) => setField<int>('id_webhook', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeWebhook => getField<String>('nome_webhook');
  set nomeWebhook(String? value) => setField<String>('nome_webhook', value);

  String? get linkWebhook => getField<String>('link_webhook');
  set linkWebhook(String? value) => setField<String>('link_webhook', value);

  List<int> get produto => getListField<int>('produto');
  set produto(List<int>? value) => setListField<int>('produto', value);

  List<int> get statusPedido => getListField<int>('status_pedido');
  set statusPedido(List<int>? value) =>
      setListField<int>('status_pedido', value);

  int? get idUsuario => getField<int>('id_usuario');
  set idUsuario(int? value) => setField<int>('id_usuario', value);

  bool? get webhookAtivo => getField<bool>('webhook_ativo');
  set webhookAtivo(bool? value) => setField<bool>('webhook_ativo', value);
}
