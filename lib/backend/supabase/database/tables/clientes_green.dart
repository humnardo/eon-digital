import '../database.dart';

class ClientesGreenTable extends SupabaseTable<ClientesGreenRow> {
  @override
  String get tableName => 'clientes_green';

  @override
  ClientesGreenRow createRow(Map<String, dynamic> data) =>
      ClientesGreenRow(data);
}

class ClientesGreenRow extends SupabaseDataRow {
  ClientesGreenRow(super.data);

  @override
  SupabaseTable get table => ClientesGreenTable();

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get neighborhood => getField<String>('neighborhood');
  set neighborhood(String? value) => setField<String>('neighborhood', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get cellphone => getField<String>('cellphone');
  set cellphone(String? value) => setField<String>('cellphone', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get number => getField<String>('number');
  set number(String? value) => setField<String>('number', value);

  String? get zipcode => getField<String>('zipcode');
  set zipcode(String? value) => setField<String>('zipcode', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get street => getField<String>('street');
  set street(String? value) => setField<String>('street', value);

  String? get cpfCnpj => getField<String>('cpf_cnpj');
  set cpfCnpj(String? value) => setField<String>('cpf_cnpj', value);

  String? get complement => getField<String>('complement');
  set complement(String? value) => setField<String>('complement', value);

  String? get uf => getField<String>('uf');
  set uf(String? value) => setField<String>('uf', value);

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);
}
