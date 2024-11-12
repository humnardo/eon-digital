import '../database.dart';

class OfertaApagarTable extends SupabaseTable<OfertaApagarRow> {
  @override
  String get tableName => 'oferta_apagar';

  @override
  OfertaApagarRow createRow(Map<String, dynamic> data) => OfertaApagarRow(data);
}

class OfertaApagarRow extends SupabaseDataRow {
  OfertaApagarRow(super.data);

  @override
  SupabaseTable get table => OfertaApagarTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get uuidOferta => getField<String>('uuid_oferta');
  set uuidOferta(String? value) => setField<String>('uuid_oferta', value);
}
