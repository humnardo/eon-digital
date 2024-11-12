import '../database.dart';

class CentroLogisticoApagarTable
    extends SupabaseTable<CentroLogisticoApagarRow> {
  @override
  String get tableName => 'centro_logistico_apagar';

  @override
  CentroLogisticoApagarRow createRow(Map<String, dynamic> data) =>
      CentroLogisticoApagarRow(data);
}

class CentroLogisticoApagarRow extends SupabaseDataRow {
  CentroLogisticoApagarRow(super.data);

  @override
  SupabaseTable get table => CentroLogisticoApagarTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get uuidBubble => getField<String>('uuid_bubble');
  set uuidBubble(String? value) => setField<String>('uuid_bubble', value);
}
