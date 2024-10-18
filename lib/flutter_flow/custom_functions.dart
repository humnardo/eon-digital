import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? somarLista(List<double>? numeros) {
  // Verifica se a lista é nula ou vazia
  if (numeros == null || numeros.isEmpty) {
    return 0;
  }

  // Retorna a soma dos números da lista
  return numeros.reduce((a, b) => a + b);
}

int? contarNumeros(List<int>? numeros) {
  // crie uma função em dart que recebe uma lista de numeros e retorna um count de quantos numeros foram passados
  if (numeros == null) {
    return null;
  } else {
    return numeros.length;
  }
}

String? moedaBrasil(String texto) {
  // crie uma função em dart para o flutterflow que remove todos os caracteres não numericos e deixe apenas os numericos e formate como moeda do BRASIL levando em consideração os centavos
  if (texto == null) {
    return null;
  } else {
    // Remove all non-numeric characters
    String numericOnly = texto.replaceAll(RegExp(r'[^0-9]'), '');
    // Format as Brazilian currency
    NumberFormat format =
        NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$', decimalDigits: 2);
    return format.format(int.parse(numericOnly) / 100);
  }
}

double? moedaToDouble(String? moeda) {
  // crie uma função que recebe um texto no formado de moeda BRASILEIRA (R$ 5.263,32) e converta esse valor para um double
  if (moeda == null) {
    return null;
  } else {
    // Remove currency symbol and thousands separator
    String numericOnly = moeda.replaceAll(RegExp(r'[^\d,]'), '');
    // Replace comma with dot for decimal point
    numericOnly = numericOnly.replaceAll(',', '.');
    // Parse as double
    return double.tryParse(numericOnly);
  }
}

DateTime? voltar24Hora(DateTime? hora) {
  // crie uma função que recebe uma data e retorna essa data 24 goras atrás
  if (hora == null) {
    return null;
  } else {
    return hora.subtract(Duration(hours: 24));
  }
}

DateTime? voltaDIas(int? dias) {
  // crie uma função que recebe um numero (integer) e retorna uma data que subtrai a quantidade de dias a partir desse numero começando com a data atual
  if (dias == null) {
    return null;
  } else {
    return DateTime.now().subtract(Duration(days: dias));
  }
}

DateTime? voltarDia0(int? dias) {
  // crie uma função que recebe um numero (integer) e retorna uma data que subtrai a quantidade de dias a partir desse numero começando com a data atual e a hora, minuto e segundo devem ser 0
  if (dias == null) {
    return null;
  } else {
    return DateTime.now().subtract(Duration(days: dias)).subtract(Duration(
        hours: DateTime.now().hour,
        minutes: DateTime.now().minute,
        seconds: DateTime.now().second,
        milliseconds: DateTime.now().millisecond,
        microseconds: DateTime.now().microsecond));
  }
}
