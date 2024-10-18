import '../database.dart';

class WebhookEventosAdminTable extends SupabaseTable<WebhookEventosAdminRow> {
  @override
  String get tableName => 'webhook_eventos_admin';

  @override
  WebhookEventosAdminRow createRow(Map<String, dynamic> data) =>
      WebhookEventosAdminRow(data);
}

class WebhookEventosAdminRow extends SupabaseDataRow {
  WebhookEventosAdminRow(super.data);

  @override
  SupabaseTable get table => WebhookEventosAdminTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get pedidoId => getField<int>('pedido_id')!;
  set pedidoId(int value) => setField<int>('pedido_id', value);

  String get webhookUrl => getField<String>('webhook_url')!;
  set webhookUrl(String value) => setField<String>('webhook_url', value);

  String get orderStatus => getField<String>('order_status')!;
  set orderStatus(String value) => setField<String>('order_status', value);

  String get orderNumber => getField<String>('order_number')!;
  set orderNumber(String value) => setField<String>('order_number', value);

  dynamic get webhookBody => getField<dynamic>('webhook_body')!;
  set webhookBody(dynamic value) => setField<dynamic>('webhook_body', value);

  int? get responseStatusCode => getField<int>('response_status_code');
  set responseStatusCode(int? value) =>
      setField<int>('response_status_code', value);

  dynamic get responseBody => getField<dynamic>('response_body');
  set responseBody(dynamic value) => setField<dynamic>('response_body', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get dateOrder => getField<DateTime>('date_order');
  set dateOrder(DateTime? value) => setField<DateTime>('date_order', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientPhone => getField<String>('client_phone');
  set clientPhone(String? value) => setField<String>('client_phone', value);

  int? get productCode => getField<int>('product_code');
  set productCode(int? value) => setField<int>('product_code', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  DateTime? get dateDelivery => getField<DateTime>('date_delivery');
  set dateDelivery(DateTime? value) =>
      setField<DateTime>('date_delivery', value);

  int? get affiliateCode => getField<int>('affiliate_code');
  set affiliateCode(int? value) => setField<int>('affiliate_code', value);

  String? get affiliateName => getField<String>('affiliate_name');
  set affiliateName(String? value) => setField<String>('affiliate_name', value);

  String? get clientAddress => getField<String>('client_address');
  set clientAddress(String? value) => setField<String>('client_address', value);

  int? get orderQuantity => getField<int>('order_quantity');
  set orderQuantity(int? value) => setField<int>('order_quantity', value);

  String? get affiliateEmail => getField<String>('affiliate_email');
  set affiliateEmail(String? value) =>
      setField<String>('affiliate_email', value);

  String? get clientZipCode => getField<String>('client_zip_code');
  set clientZipCode(String? value) =>
      setField<String>('client_zip_code', value);

  double? get orderFinalPrice => getField<double>('order_final_price');
  set orderFinalPrice(double? value) =>
      setField<double>('order_final_price', value);

  String? get orderStatusName => getField<String>('order_status_name');
  set orderStatusName(String? value) =>
      setField<String>('order_status_name', value);

  String? get clientAddressCity => getField<String>('client_address_city');
  set clientAddressCity(String? value) =>
      setField<String>('client_address_city', value);

  String? get clientAddressComp => getField<String>('client_address_comp');
  set clientAddressComp(String? value) =>
      setField<String>('client_address_comp', value);

  String? get clientAddressState => getField<String>('client_address_state');
  set clientAddressState(String? value) =>
      setField<String>('client_address_state', value);

  String? get clientAddressNumber => getField<String>('client_address_number');
  set clientAddressNumber(String? value) =>
      setField<String>('client_address_number', value);

  String? get clientAddressDistrict =>
      getField<String>('client_address_district');
  set clientAddressDistrict(String? value) =>
      setField<String>('client_address_district', value);

  String? get processingStatus => getField<String>('processing_status');
  set processingStatus(String? value) =>
      setField<String>('processing_status', value);

  int? get attempts => getField<int>('attempts');
  set attempts(int? value) => setField<int>('attempts', value);

  DateTime? get lastAttemptAt => getField<DateTime>('last_attempt_at');
  set lastAttemptAt(DateTime? value) =>
      setField<DateTime>('last_attempt_at', value);
}
