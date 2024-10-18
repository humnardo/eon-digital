import '../database.dart';

class NotificationTable extends SupabaseTable<NotificationRow> {
  @override
  String get tableName => 'notification';

  @override
  NotificationRow createRow(Map<String, dynamic> data) => NotificationRow(data);
}

class NotificationRow extends SupabaseDataRow {
  NotificationRow(super.data);

  @override
  SupabaseTable get table => NotificationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int get idUsuario => getField<int>('id_usuario')!;
  set idUsuario(int value) => setField<int>('id_usuario', value);

  String? get mensagem => getField<String>('mensagem');
  set mensagem(String? value) => setField<String>('mensagem', value);

  bool? get enviado => getField<bool>('enviado');
  set enviado(bool? value) => setField<bool>('enviado', value);

  int? get idPedido => getField<int>('id_pedido');
  set idPedido(int? value) => setField<int>('id_pedido', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get uuid => getField<String>('uuid');
  set uuid(String? value) => setField<String>('uuid', value);
}
