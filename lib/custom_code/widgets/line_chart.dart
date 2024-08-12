// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';

class LineChart extends StatefulWidget {
  final String idUser;
  final double width;
  final double height;
  final String chartTitle;

  const LineChart({
    Key? key,
    required this.idUser,
    this.width = double.infinity,
    this.height = 300,
    this.chartTitle = 'Ganhos',
  }) : super(key: key);

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  List<ChartDataStruct> chartData = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    const String url =
        'https://rjgkiosbxidexelzgsis.supabase.co/rest/v1/rpc/pedidos_afiliados';
    const String apiKey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJqZ2tpb3NieGlkZXhlbHpnc2lzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTA0MjIwNzQsImV4cCI6MjAyNTk5ODA3NH0.9ofMXSIittRfGSwWX4a4qAdToZYLNlseiY1OTzwQ-1I';
    const String token =
        'rPRT6e3sZ32/wWbdAmGG52GfJlJ+QVeAx5eH3/HfheQibuUnEvcdZVk6QQablkJ1GWu2qav2O1HsQU7PIE9ung==';

    final Map<String, dynamic> requestBody = {
      'input_user_id': widget.idUser,
    };

    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'apikey': apiKey,
          'Authorization': token,
        },
        body: jsonEncode(requestBody),
      );
      print('id do usuario:  ${widget.idUser}');

      if (response.statusCode == 200) {
        setState(() {
          chartData = List.from(jsonDecode(response.body)
              .map((item) => ChartDataStruct.fromJson(item)));
          // Log para verificar os dados recebidos
          print('Chart Data: ${chartData}');
          for (var data in chartData) {
            print(
                'Data de Entrega: ${data.dataEntrega}, Comissão Vendedor: ${data.comissaoVendedor}');
          }
        });
      } else {
        throw Exception('Falha ao carregar dados!');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  double calculateTotalCommissions() {
    return chartData.fold(0, (sum, item) => sum + item.comissaoVendedor);
  }

  @override
  Widget build(BuildContext context) {
    final totalCommissions = calculateTotalCommissions();
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: SfCartesianChart(
        title: ChartTitle(
          // Combine 'Ganhos' e o total das comissões em uma única string
          text:
              '${widget.chartTitle ?? "Ganhos"}                   R\$${totalCommissions.toStringAsFixed(2)}',
          textStyle: TextStyle(
            color: Color(0xFFFF4C00), // Cor laranja
            fontWeight: FontWeight.bold, // Negrito
            fontSize: 16, // Tamanho da fonte (ajuste conforme necessário)
          ),
          // Aqui você pode ajustar a posição do título com 'alignment'
          alignment: ChartAlignment.near, // Alinha à esquerda
        ),
        margin: EdgeInsets.only(left: 10, right: 10), // Adicionando margens
        primaryXAxis: CategoryAxis(
          isVisible: true,
          minimum: 0, // Inicia em 0
          maximum: chartData.isNotEmpty ? chartData.length - 1 : 0,
          interval: 1, // Intervalo entre cada ponto no eixo X
          edgeLabelPlacement: EdgeLabelPlacement.none,
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(
          minimum: 0,
          maximum: calculateTotalCommissions(),
          interval: 100,
          edgeLabelPlacement: EdgeLabelPlacement.shift,
        ),
        series: <CartesianSeries<ChartDataStruct, String>>[
          SplineAreaSeries<ChartDataStruct, String>(
            dataSource: chartData,
            borderColor: Color(0xFFFF4C00), // Cor da borda da linha
            borderWidth: 2, // Largura da borda da linha
            color: Color(0xFFFF4C00)
                .withOpacity(0.6), // Cor de preenchimento com opacidade
            xValueMapper: (ChartDataStruct data, _) => data.dataEntrega,
            yValueMapper: (ChartDataStruct data, _) => data.comissaoVendedor,
            markerSettings:
                MarkerSettings(isVisible: true), // Mostrar marcadores
          ),
        ],
        tooltipBehavior: TooltipBehavior(enable: true),
      ),
    );
  }
}

class ChartDataStruct {
  final String dataEntrega;
  final double comissaoVendedor;

  ChartDataStruct({required this.dataEntrega, required this.comissaoVendedor});

  factory ChartDataStruct.fromJson(Map<String, dynamic> json) {
    print(
        'Tipo de json["soma_comissao"]: ${json["soma_comissao"].runtimeType}');
    print('Valor de json["soma_comissao"]: ${json["soma_comissao"]}');
    return ChartDataStruct(
      /*dataEntrega:DateFormat('dd/MM').format(DateTime.parse(json['data_entrega'])),
      comissaoVendedor: (json['comissao_vendedor'] as num).toDouble(),*/
      dataEntrega:
          DateFormat('dd/MM').format(DateTime.parse(json['data_entrega'])),
      comissaoVendedor: (json['soma_comissao'] as num).toDouble(),
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
