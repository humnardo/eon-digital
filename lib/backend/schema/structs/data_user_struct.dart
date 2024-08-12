// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataUserStruct extends BaseStruct {
  DataUserStruct({
    String? nome,
  }) : _nome = nome;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static DataUserStruct fromMap(Map<String, dynamic> data) => DataUserStruct(
        nome: data['nome'] as String?,
      );

  static DataUserStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataUserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataUserStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataUserStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataUserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataUserStruct && nome == other.nome;
  }

  @override
  int get hashCode => const ListEquality().hash([nome]);
}

DataUserStruct createDataUserStruct({
  String? nome,
}) =>
    DataUserStruct(
      nome: nome,
    );
