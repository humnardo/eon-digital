import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginSupabaseCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginSupabase',
      apiUrl:
          'https://gaommueaytxazkceoott.supabase.co/auth/v1/token?grant_type=password',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjQyNTE2NzcsImV4cCI6MjAzOTgyNzY3N30.Er337-hHPp_z1DO-L2dqAsAKsdfvpjwPSXSSSlH12tA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? accesToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static int? expiresAt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.expires_at''',
      ));
  static String? refresToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.refresh_token''',
      ));
  static String? uuidUser(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class TotalComissoesCall {
  static Future<ApiCallResponse> call({
    int? idUser = 1296,
  }) async {
    final ffApiRequestBody = '''
{
  "p_id_usuario": $idUser
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TotalComissoes',
      apiUrl:
          'https://gaommueaytxazkceoott.supabase.co/rest/v1/rpc/total_comissoes',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SaldoDisponivelCall {
  static Future<ApiCallResponse> call({
    int? pIdUsuarios = 1296,
  }) async {
    final ffApiRequestBody = '''
{
  "p_id_usuarios": "$pIdUsuarios"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saldoDisponivel',
      apiUrl:
          'https://gaommueaytxazkceoott.supabase.co/rest/v1/rpc/saques_disponiveis',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? totalComissoes(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.total_comissoes''',
      ));
}

class SaldoLiberarCall {
  static Future<ApiCallResponse> call({
    int? idUsuario = 1296,
  }) async {
    final ffApiRequestBody = '''
{
  "id_usuario": "$idUsuario"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'saldoLiberar',
      apiUrl:
          'https://gaommueaytxazkceoott.supabase.co/rest/v1/rpc/saldo_liberar',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CalcularComissoesDiaCall {
  static Future<ApiCallResponse> call({
    String? pDataInicial = '2024-09-12',
    int? pIdUsuario = 1296,
  }) async {
    final ffApiRequestBody = '''
{
  "p_data_inicial": "$pDataInicial",
  "p_id_usuario": "$pIdUsuario"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'calcularComissoesDia',
      apiUrl:
          'https://gaommueaytxazkceoott.supabase.co/rest/v1/rpc/calcular_comissoes_por_dia',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? datas(dynamic response) => (getJsonField(
        response,
        r'''$[:].data''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? comissoes(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_comissoes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class CalcularcomissoespordataCall {
  static Future<ApiCallResponse> call({
    String? pDataInicio = '2024-09-01',
    int? pIdUsuario = 1296,
  }) async {
    final ffApiRequestBody = '''
{
  "p_data_inicio": "$pDataInicio",
  "p_id_usuario": "$pIdUsuario"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'calcularcomissoespordata',
      apiUrl:
          'https://gaommueaytxazkceoott.supabase.co/rest/v1/rpc/function_calcular_comissoes_por_data',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? datas(dynamic response) => (getJsonField(
        response,
        r'''$[:].data_entrega''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? comissoes(dynamic response) => (getJsonField(
        response,
        r'''$[:].total_comissoes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
