import '../database.dart';

class ProductsGreenTable extends SupabaseTable<ProductsGreenRow> {
  @override
  String get tableName => 'products_green';

  @override
  ProductsGreenRow createRow(Map<String, dynamic> data) =>
      ProductsGreenRow(data);
}

class ProductsGreenRow extends SupabaseDataRow {
  ProductsGreenRow(super.data);

  @override
  SupabaseTable get table => ProductsGreenTable();

  bool? get affiliationProposal => getField<bool>('affiliation_proposal');
  set affiliationProposal(bool? value) =>
      setField<bool>('affiliation_proposal', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get allowProposal => getField<bool>('allow_proposal');
  set allowProposal(bool? value) => setField<bool>('allow_proposal', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  int? get period => getField<int>('period');
  set period(int? value) => setField<int>('period', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get thankYouPage => getField<String>('thank_you_page');
  set thankYouPage(String? value) => setField<String>('thank_you_page', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  bool? get affiliationPublic => getField<bool>('affiliation_public');
  set affiliationPublic(bool? value) =>
      setField<bool>('affiliation_public', value);

  bool? get affiliationApprobation => getField<bool>('affiliation_approbation');
  set affiliationApprobation(bool? value) =>
      setField<bool>('affiliation_approbation', value);

  int? get proposalMinimum => getField<int>('proposal_minimum');
  set proposalMinimum(int? value) => setField<int>('proposal_minimum', value);

  String? get productType => getField<String>('product_type');
  set productType(String? value) => setField<String>('product_type', value);

  String? get method => getField<String>('method');
  set method(String? value) => setField<String>('method', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
