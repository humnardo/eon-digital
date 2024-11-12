import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

String _kSupabaseUrl = 'https://rjgkiosbxidexelzgsis.supabase.co';
String _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJqZ2tpb3NieGlkZXhlbHpnc2lzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MjIwNzQsImV4cCI6MjAyNTk5ODA3NH0.9ofMXSIittRfGSwWX4a4qAdToZYLNlseiY1OTzwQ-1I';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
