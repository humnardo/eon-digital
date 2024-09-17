import '../database.dart';

class WebhookPedidosTable extends SupabaseTable<WebhookPedidosRow> {
  @override
  String get tableName => 'webhook_pedidos';

  @override
  WebhookPedidosRow createRow(Map<String, dynamic> data) =>
      WebhookPedidosRow(data);
}

class WebhookPedidosRow extends SupabaseDataRow {
  WebhookPedidosRow(super.data);

  @override
  SupabaseTable get table => WebhookPedidosTable();

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientPhone => getField<String>('client_phone');
  set clientPhone(String? value) => setField<String>('client_phone', value);

  String? get clientZipCode => getField<String>('client_zip_code');
  set clientZipCode(String? value) =>
      setField<String>('client_zip_code', value);

  String? get clientAddress => getField<String>('client_address');
  set clientAddress(String? value) => setField<String>('client_address', value);

  String? get clientAddressNumber => getField<String>('client_address_number');
  set clientAddressNumber(String? value) =>
      setField<String>('client_address_number', value);

  String? get clientAddressDistrict =>
      getField<String>('client_address_district');
  set clientAddressDistrict(String? value) =>
      setField<String>('client_address_district', value);

  String? get clientAddressComp => getField<String>('client_address_comp');
  set clientAddressComp(String? value) =>
      setField<String>('client_address_comp', value);

  String? get clientAddressCity => getField<String>('client_address_city');
  set clientAddressCity(String? value) =>
      setField<String>('client_address_city', value);

  String? get clientAddressState => getField<String>('client_address_state');
  set clientAddressState(String? value) =>
      setField<String>('client_address_state', value);

  String? get dateDelivery => getField<String>('date_delivery');
  set dateDelivery(String? value) => setField<String>('date_delivery', value);

  int? get orderStatus => getField<int>('order_status');
  set orderStatus(int? value) => setField<int>('order_status', value);

  String? get orderStatusName => getField<String>('order_status_name');
  set orderStatusName(String? value) =>
      setField<String>('order_status_name', value);

  double? get orderFinalPrice => getField<double>('order_final_price');
  set orderFinalPrice(double? value) =>
      setField<double>('order_final_price', value);

  int? get productCode => getField<int>('product_code');
  set productCode(int? value) => setField<int>('product_code', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get orderQuantity => getField<double>('order_quantity');
  set orderQuantity(double? value) => setField<double>('order_quantity', value);

  int? get affiliateCode => getField<int>('affiliate_code');
  set affiliateCode(int? value) => setField<int>('affiliate_code', value);

  String? get affiliateEmail => getField<String>('affiliate_email');
  set affiliateEmail(String? value) =>
      setField<String>('affiliate_email', value);

  String? get affiliateName => getField<String>('affiliate_name');
  set affiliateName(String? value) => setField<String>('affiliate_name', value);

  DateTime? get dateOrder => getField<DateTime>('date_order');
  set dateOrder(DateTime? value) => setField<DateTime>('date_order', value);

  int? get orderNumber => getField<int>('order_number');
  set orderNumber(int? value) => setField<int>('order_number', value);
}
