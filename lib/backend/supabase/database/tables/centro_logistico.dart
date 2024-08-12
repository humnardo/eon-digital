import '../database.dart';

class CentroLogisticoTable extends SupabaseTable<CentroLogisticoRow> {
  @override
  String get tableName => 'centro_logistico';

  @override
  CentroLogisticoRow createRow(Map<String, dynamic> data) =>
      CentroLogisticoRow(data);
}

class CentroLogisticoRow extends SupabaseDataRow {
  CentroLogisticoRow(super.data);

  @override
  SupabaseTable get table => CentroLogisticoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get nomeCd => getField<String>('nome_cd');
  set nomeCd(String? value) => setField<String>('nome_cd', value);

  String? get uuidBubble => getField<String>('uuid_bubble');
  set uuidBubble(String? value) => setField<String>('uuid_bubble', value);

  List<String> get cidades => getListField<String>('cidades');
  set cidades(List<String>? value) => setListField<String>('cidades', value);
}
