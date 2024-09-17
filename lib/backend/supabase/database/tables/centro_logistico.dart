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

  bool? get segunda => getField<bool>('segunda');
  set segunda(bool? value) => setField<bool>('segunda', value);

  bool? get terca => getField<bool>('terca');
  set terca(bool? value) => setField<bool>('terca', value);

  bool? get quarta => getField<bool>('quarta');
  set quarta(bool? value) => setField<bool>('quarta', value);

  bool? get quinta => getField<bool>('quinta');
  set quinta(bool? value) => setField<bool>('quinta', value);

  bool? get sexta => getField<bool>('sexta');
  set sexta(bool? value) => setField<bool>('sexta', value);

  bool? get sabado => getField<bool>('sabado');
  set sabado(bool? value) => setField<bool>('sabado', value);

  bool? get domingo => getField<bool>('domingo');
  set domingo(bool? value) => setField<bool>('domingo', value);
}
