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
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

DateTime? dataAtual7Dias() {
// Obter a data e hora atuais
  DateTime currentDate = DateTime.now();

  // Subtrair 7 dias da data atual
  DateTime deliveryDate = currentDate.subtract(Duration(days: 7));

  // Retornar a data 7 dias atrás
  return deliveryDate;
}
