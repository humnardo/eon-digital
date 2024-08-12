import '../database.dart';

class EventosKiwifyTable extends SupabaseTable<EventosKiwifyRow> {
  @override
  String get tableName => 'eventos_kiwify';

  @override
  EventosKiwifyRow createRow(Map<String, dynamic> data) =>
      EventosKiwifyRow(data);
}

class EventosKiwifyRow extends SupabaseDataRow {
  EventosKiwifyRow(super.data);

  @override
  SupabaseTable get table => EventosKiwifyTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get evento => getField<String>('evento');
  set evento(String? value) => setField<String>('evento', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get plano => getField<String>('plano');
  set plano(String? value) => setField<String>('plano', value);
}
