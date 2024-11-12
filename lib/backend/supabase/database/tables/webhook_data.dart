import '../database.dart';

class WebhookDataTable extends SupabaseTable<WebhookDataRow> {
  @override
  String get tableName => 'webhook_data';

  @override
  WebhookDataRow createRow(Map<String, dynamic> data) => WebhookDataRow(data);
}

class WebhookDataRow extends SupabaseDataRow {
  WebhookDataRow(super.data);

  @override
  SupabaseTable get table => WebhookDataTable();

  dynamic get jsonbBuildObject => getField<dynamic>('jsonb_build_object');
  set jsonbBuildObject(dynamic value) =>
      setField<dynamic>('jsonb_build_object', value);
}
