import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.Enum:
        data = (param is Enum) ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  DataStruct,
  Enum,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .whereType<String>()
          .map((p) => p)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case ViewUsuariosRow:
            return ViewUsuariosRow(data);
          case PerfilRow:
            return PerfilRow(data);
          case WebhookUrlRow:
            return WebhookUrlRow(data);
          case QtdProdutosDisponivelRow:
            return QtdProdutosDisponivelRow(data);
          case ComissaoCompletoRow:
            return ComissaoCompletoRow(data);
          case ComissaoTotalRow:
            return ComissaoTotalRow(data);
          case RankingProdutosMaisVendidosRow:
            return RankingProdutosMaisVendidosRow(data);
          case CentroLogisticoRow:
            return CentroLogisticoRow(data);
          case ClientesGreenRow:
            return ClientesGreenRow(data);
          case PedidoMetodoPagamentoRow:
            return PedidoMetodoPagamentoRow(data);
          case TesteRow:
            return TesteRow(data);
          case WebhookLogsRow:
            return WebhookLogsRow(data);
          case PeriodoRow:
            return PeriodoRow(data);
          case TaxasRow:
            return TaxasRow(data);
          case WebhookDataRow:
            return WebhookDataRow(data);
          case UsuarioViewRow:
            return UsuarioViewRow(data);
          case UsuariosApagarRow:
            return UsuariosApagarRow(data);
          case QuantidadePedidosRow:
            return QuantidadePedidosRow(data);
          case ProductsGreenRow:
            return ProductsGreenRow(data);
          case AfiliacoesRow:
            return AfiliacoesRow(data);
          case ProdutoApagarRow:
            return ProdutoApagarRow(data);
          case WebhookPedidosRow:
            return WebhookPedidosRow(data);
          case ExtraMotoboysRow:
            return ExtraMotoboysRow(data);
          case ComissaoPersonalizadaRow:
            return ComissaoPersonalizadaRow(data);
          case StatusAfiliacaoRow:
            return StatusAfiliacaoRow(data);
          case StatusEnvioRow:
            return StatusEnvioRow(data);
          case StatusSaqueRow:
            return StatusSaqueRow(data);
          case ComissaoDataEntregaRow:
            return ComissaoDataEntregaRow(data);
          case OfertaApagarRow:
            return OfertaApagarRow(data);
          case CentroLogisticoApagarRow:
            return CentroLogisticoApagarRow(data);
          case StatusPedidoRow:
            return StatusPedidoRow(data);
          case DataEntregaGroupRow:
            return DataEntregaGroupRow(data);
          case CriarPagamentoMercadopagoRow:
            return CriarPagamentoMercadopagoRow(data);
          case ProdutoRow:
            return ProdutoRow(data);
          case PedidosRow:
            return PedidosRow(data);
          case CentroDistribuicaoRow:
            return CentroDistribuicaoRow(data);
          case WebhookConfigurationAdminRow:
            return WebhookConfigurationAdminRow(data);
          case ViewAfiliacoesProdutorAfiliadoRow:
            return ViewAfiliacoesProdutorAfiliadoRow(data);
          case WebhookTesteRow:
            return WebhookTesteRow(data);
          case EntregasMotoboyCompletasRow:
            return EntregasMotoboyCompletasRow(data);
          case PedidoCentroLogisticoRow:
            return PedidoCentroLogisticoRow(data);
          case VendasGreenRow:
            return VendasGreenRow(data);
          case WebhookConfigurationRow:
            return WebhookConfigurationRow(data);
          case CepOffRow:
            return CepOffRow(data);
          case WebhookEventosAdminRow:
            return WebhookEventosAdminRow(data);
          case EventosKiwifyRow:
            return EventosKiwifyRow(data);
          case FormasPagamentoRow:
            return FormasPagamentoRow(data);
          case PedidoStatusRow:
            return PedidoStatusRow(data);
          case SaquesRow:
            return SaquesRow(data);
          case UsuariosRow:
            return UsuariosRow(data);
          case DataEntregaGroupTesteRow:
            return DataEntregaGroupTesteRow(data);
          case OfertasRow:
            return OfertasRow(data);
          case MetodoPagamentoRow:
            return MetodoPagamentoRow(data);
          case MetodoPagamentoCountRow:
            return MetodoPagamentoCountRow(data);
          case DataEntregaGroupTesteApagarRow:
            return DataEntregaGroupTesteApagarRow(data);
          case StatusProdutoRow:
            return StatusProdutoRow(data);
          case PagamentosPlataformaRow:
            return PagamentosPlataformaRow(data);
          case ResponsavelRow:
            return ResponsavelRow(data);
          case ComissaoCompletoStatusRow:
            return ComissaoCompletoStatusRow(data);
          case EventoRow:
            return EventoRow(data);
          case EstoqueRow:
            return EstoqueRow(data);
          case WebhookEventosRow:
            return WebhookEventosRow(data);
          case FilaEnviarWebhookRow:
            return FilaEnviarWebhookRow(data);
          case EntregasMotoboyRow:
            return EntregasMotoboyRow(data);
          case ComissaoUsuariosRow:
            return ComissaoUsuariosRow(data);
          case MetasDeVendasGreenRow:
            return MetasDeVendasGreenRow(data);
          case TotalSacadoRow:
            return TotalSacadoRow(data);
          case TipoChavepixRow:
            return TipoChavepixRow(data);
          case ControleRow:
            return ControleRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      case ParamType.Enum:
        return deserializeEnum<T>(param);

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}
