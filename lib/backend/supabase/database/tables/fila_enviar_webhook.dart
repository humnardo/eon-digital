import '../database.dart';

class FilaEnviarWebhookTable extends SupabaseTable<FilaEnviarWebhookRow> {
  @override
  String get tableName => 'fila_enviar_webhook';

  @override
  FilaEnviarWebhookRow createRow(Map<String, dynamic> data) =>
      FilaEnviarWebhookRow(data);
}

class FilaEnviarWebhookRow extends SupabaseDataRow {
  FilaEnviarWebhookRow(super.data);

  @override
  SupabaseTable get table => FilaEnviarWebhookTable();

  int get idFila => getField<int>('id_fila')!;
  set idFila(int value) => setField<int>('id_fila', value);

  int get idPedido => getField<int>('id_pedido')!;
  set idPedido(int value) => setField<int>('id_pedido', value);

  String get status => getField<String>('status')!;
  set status(String value) => setField<String>('status', value);

  DateTime get dataInsercao => getField<DateTime>('data_insercao')!;
  set dataInsercao(DateTime value) =>
      setField<DateTime>('data_insercao', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);
}
