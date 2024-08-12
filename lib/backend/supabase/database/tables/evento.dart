import '../database.dart';

class EventoTable extends SupabaseTable<EventoRow> {
  @override
  String get tableName => 'evento';

  @override
  EventoRow createRow(Map<String, dynamic> data) => EventoRow(data);
}

class EventoRow extends SupabaseDataRow {
  EventoRow(super.data);

  @override
  SupabaseTable get table => EventoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  String get event => getField<String>('event')!;
  set event(String value) => setField<String>('event', value);

  String? get oldStatus => getField<String>('old_status');
  set oldStatus(String? value) => setField<String>('old_status', value);

  String? get currentStatus => getField<String>('current_status');
  set currentStatus(String? value) => setField<String>('current_status', value);

  int? get productAffiliationProposal =>
      getField<int>('product_affiliation_proposal');
  set productAffiliationProposal(int? value) =>
      setField<int>('product_affiliation_proposal', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  int? get productAllowProposal => getField<int>('product_allow_proposal');
  set productAllowProposal(int? value) =>
      setField<int>('product_allow_proposal', value);

  DateTime? get productCreatedAt => getField<DateTime>('product_created_at');
  set productCreatedAt(DateTime? value) =>
      setField<DateTime>('product_created_at', value);

  int? get productIsActive => getField<int>('product_is_active');
  set productIsActive(int? value) => setField<int>('product_is_active', value);

  int? get productPeriod => getField<int>('product_period');
  set productPeriod(int? value) => setField<int>('product_period', value);

  DateTime? get productUpdatedAt => getField<DateTime>('product_updated_at');
  set productUpdatedAt(DateTime? value) =>
      setField<DateTime>('product_updated_at', value);

  String? get productThankYouPage => getField<String>('product_thank_you_page');
  set productThankYouPage(String? value) =>
      setField<String>('product_thank_you_page', value);

  double? get productAmount => getField<double>('product_amount');
  set productAmount(double? value) => setField<double>('product_amount', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  int? get productAffiliationPublic =>
      getField<int>('product_affiliation_public');
  set productAffiliationPublic(int? value) =>
      setField<int>('product_affiliation_public', value);

  int? get productAffiliationApprobation =>
      getField<int>('product_affiliation_approbation');
  set productAffiliationApprobation(int? value) =>
      setField<int>('product_affiliation_approbation', value);

  int? get productProposalMinimum => getField<int>('product_proposal_minimum');
  set productProposalMinimum(int? value) =>
      setField<int>('product_proposal_minimum', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  String? get productMethod => getField<String>('product_method');
  set productMethod(String? value) => setField<String>('product_method', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get saleStatus => getField<String>('sale_status');
  set saleStatus(String? value) => setField<String>('sale_status', value);

  int? get saleSellerId => getField<int>('sale_seller_id');
  set saleSellerId(int? value) => setField<int>('sale_seller_id', value);

  DateTime? get saleCreatedAt => getField<DateTime>('sale_created_at');
  set saleCreatedAt(DateTime? value) =>
      setField<DateTime>('sale_created_at', value);

  DateTime? get saleUpdatedAt => getField<DateTime>('sale_updated_at');
  set saleUpdatedAt(DateTime? value) =>
      setField<DateTime>('sale_updated_at', value);

  String? get saleMethod => getField<String>('sale_method');
  set saleMethod(String? value) => setField<String>('sale_method', value);

  double? get saleAmount => getField<double>('sale_amount');
  set saleAmount(double? value) => setField<double>('sale_amount', value);

  int? get saleClientId => getField<int>('sale_client_id');
  set saleClientId(int? value) => setField<int>('sale_client_id', value);

  int? get saleInstallments => getField<int>('sale_installments');
  set saleInstallments(int? value) => setField<int>('sale_installments', value);

  String? get saleType => getField<String>('sale_type');
  set saleType(String? value) => setField<String>('sale_type', value);

  int? get saleId => getField<int>('sale_id');
  set saleId(int? value) => setField<int>('sale_id', value);

  dynamic get saleCoupon => getField<dynamic>('sale_coupon');
  set saleCoupon(dynamic value) => setField<dynamic>('sale_coupon', value);

  dynamic get saleMetas => getField<dynamic>('sale_metas');
  set saleMetas(dynamic value) => setField<dynamic>('sale_metas', value);

  DateTime? get contractStartDate => getField<DateTime>('contract_start_date');
  set contractStartDate(DateTime? value) =>
      setField<DateTime>('contract_start_date', value);

  DateTime? get contractCurrentPeriodEnd =>
      getField<DateTime>('contract_current_period_end');
  set contractCurrentPeriodEnd(DateTime? value) =>
      setField<DateTime>('contract_current_period_end', value);

  DateTime? get contractCreatedAt => getField<DateTime>('contract_created_at');
  set contractCreatedAt(DateTime? value) =>
      setField<DateTime>('contract_created_at', value);

  DateTime? get contractUpdatedAt => getField<DateTime>('contract_updated_at');
  set contractUpdatedAt(DateTime? value) =>
      setField<DateTime>('contract_updated_at', value);

  String? get contractStatus => getField<String>('contract_status');
  set contractStatus(String? value) =>
      setField<String>('contract_status', value);

  int? get contractId => getField<int>('contract_id');
  set contractId(int? value) => setField<int>('contract_id', value);

  String? get sellerCellphone => getField<String>('seller_cellphone');
  set sellerCellphone(String? value) =>
      setField<String>('seller_cellphone', value);

  String? get sellerEmail => getField<String>('seller_email');
  set sellerEmail(String? value) => setField<String>('seller_email', value);

  String? get sellerName => getField<String>('seller_name');
  set sellerName(String? value) => setField<String>('seller_name', value);

  int? get sellerId => getField<int>('seller_id');
  set sellerId(int? value) => setField<int>('seller_id', value);

  String? get clientCity => getField<String>('client_city');
  set clientCity(String? value) => setField<String>('client_city', value);

  String? get clientNeighborhood => getField<String>('client_neighborhood');
  set clientNeighborhood(String? value) =>
      setField<String>('client_neighborhood', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientCellphone => getField<String>('client_cellphone');
  set clientCellphone(String? value) =>
      setField<String>('client_cellphone', value);

  DateTime? get clientUpdatedAt => getField<DateTime>('client_updated_at');
  set clientUpdatedAt(DateTime? value) =>
      setField<DateTime>('client_updated_at', value);

  DateTime? get clientCreatedAt => getField<DateTime>('client_created_at');
  set clientCreatedAt(DateTime? value) =>
      setField<DateTime>('client_created_at', value);

  String? get clientNumber => getField<String>('client_number');
  set clientNumber(String? value) => setField<String>('client_number', value);

  String? get clientZipcode => getField<String>('client_zipcode');
  set clientZipcode(String? value) => setField<String>('client_zipcode', value);

  String? get clientEmail => getField<String>('client_email');
  set clientEmail(String? value) => setField<String>('client_email', value);

  String? get clientStreet => getField<String>('client_street');
  set clientStreet(String? value) => setField<String>('client_street', value);

  String? get clientCpfCnpj => getField<String>('client_cpf_cnpj');
  set clientCpfCnpj(String? value) =>
      setField<String>('client_cpf_cnpj', value);

  String? get clientComplement => getField<String>('client_complement');
  set clientComplement(String? value) =>
      setField<String>('client_complement', value);

  String? get clientUf => getField<String>('client_uf');
  set clientUf(String? value) => setField<String>('client_uf', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  String? get affiliateCellphone => getField<String>('affiliate_cellphone');
  set affiliateCellphone(String? value) =>
      setField<String>('affiliate_cellphone', value);

  String? get affiliateEmail => getField<String>('affiliate_email');
  set affiliateEmail(String? value) =>
      setField<String>('affiliate_email', value);

  String? get affiliateName => getField<String>('affiliate_name');
  set affiliateName(String? value) => setField<String>('affiliate_name', value);

  int? get affiliateId => getField<int>('affiliate_id');
  set affiliateId(int? value) => setField<int>('affiliate_id', value);

  dynamic get productMetas => getField<dynamic>('product_metas');
  set productMetas(dynamic value) => setField<dynamic>('product_metas', value);

  dynamic get proposalMetas => getField<dynamic>('proposal_metas');
  set proposalMetas(dynamic value) =>
      setField<dynamic>('proposal_metas', value);
}
