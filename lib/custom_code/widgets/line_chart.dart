// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:math';

class LineChart extends StatefulWidget {
  final String idUser;
  final double width;
  final double height;
  final DateTime startDate;

  const LineChart({
    Key? key,
    required this.idUser,
    this.width = double.infinity,
    this.height = 300,
    required this.startDate,
  }) : super(key: key);

  @override
  _LineChartState createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  List<ChartDataStruct> chartData = [];
  bool isLoading = true;
  String errorMessage = '';

  TooltipBehavior _tooltipBehavior =
      TooltipBehavior(enable: true, activationMode: ActivationMode.singleTap);

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  @override
  void didUpdateWidget(LineChart oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.startDate != oldWidget.startDate) {
      setState(() {
        isLoading = true;
      });
      fetchDataFromAPI();
    }
  }

  Future<void> fetchDataFromAPI() async {
    const String url =
        'https://gaommueaytxazkceoott.supabase.co/rest/v1/rpc/function_calcular_comissoes_por_data';
    const String apiKey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU';
    const String token =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhb21tdWVheXR4YXprY2Vvb3R0Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcyNDI1MTY3NywiZXhwIjoyMDM5ODI3Njc3fQ.yj_qyDSwFntMJqHANQUnNdQ6OHs2wSdI_-ufEAwnYUU';

    final Map<String, dynamic> requestBody = {
      'p_data_inicio': DateFormat('yyyy-MM-dd').format(widget.startDate),
      'p_id_usuario': widget.idUser,
    };

    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'apikey': apiKey,
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body) as List<dynamic>;

        if (data.isEmpty) {
          setState(() {
            errorMessage = 'Nenhum dado disponível para o período selecionado';
            isLoading = false;
          });
          return;
        }

        setState(() {
          chartData =
              data.map((item) => ChartDataStruct.fromJson(item)).toList();
          isLoading = false;
        });
      } else {
        throw Exception(
            'Falha ao carregar dados. Código de status: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Erro ao carregar dados: $e';
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableLineChart(
      chartData: chartData,
      isLoading: isLoading,
      errorMessage: errorMessage,
      tooltipBehavior: _tooltipBehavior,
    );
  }
}

class ScrollableLineChart extends StatelessWidget {
  final List<ChartDataStruct> chartData;
  final bool isLoading;
  final String errorMessage;
  final TooltipBehavior tooltipBehavior;

  const ScrollableLineChart({
    Key? key,
    required this.chartData,
    required this.isLoading,
    required this.errorMessage,
    required this.tooltipBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tooltipBehavior.hide();
      },
      child: Container(
        height: 400, // Adjust height as needed
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : errorMessage.isNotEmpty
                ? Center(child: Text(errorMessage))
                : chartData.isEmpty
                    ? Center(child: Text('Nenhum dado disponível'))
                    : SingleChildScrollView(
                        scrollDirection:
                            Axis.vertical, // Enable vertical scroll
                        child: SingleChildScrollView(
                          scrollDirection:
                              Axis.horizontal, // Enable horizontal scroll
                          child: Container(
                            width: max(MediaQuery.of(context).size.width,
                                chartData.length * 50.0),
                            child: SfCartesianChart(
                              margin: EdgeInsets.all(5),
                              zoomPanBehavior: ZoomPanBehavior(
                                enablePanning: false, // Disable zoom/panning
                                enablePinching: false, // Disable pinch zoom
                              ),
                              primaryXAxis: CategoryAxis(
                                majorGridLines: MajorGridLines(width: 0),
                                isVisible: true,
                                labelRotation: 45,
                                labelAlignment: LabelAlignment.end,
                                labelStyle: GoogleFonts.sora(
                                  textStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                interval: 1,
                              ),
                              primaryYAxis: NumericAxis(
                                isVisible: true,
                                axisLine: AxisLine(width: 0),
                                majorGridLines: MajorGridLines(width: 0),
                              ),
                              series: <CartesianSeries<ChartDataStruct,
                                  String>>[
                                SplineAreaSeries<ChartDataStruct, String>(
                                  name: 'Comissões',
                                  dataSource: chartData,
                                  borderColor: Color(0xFFFF4C00),
                                  borderWidth: 2,
                                  color: Color(0xFFFF4C00).withOpacity(0.6),
                                  xValueMapper: (ChartDataStruct data, _) =>
                                      data.dataEntrega,
                                  yValueMapper: (ChartDataStruct data, _) =>
                                      data.totalComissoes,
                                  markerSettings: MarkerSettings(
                                    isVisible: true,
                                    height: 8,
                                    width: 8,
                                    borderWidth: 2,
                                    borderColor: Color(0xFFFF4C00),
                                  ),
                                ),
                              ],
                              tooltipBehavior: tooltipBehavior,
                            ),
                          ),
                        ),
                      ),
      ),
    );
  }
}

class ChartDataStruct {
  final String dataEntrega;
  final double totalComissoes;
  final DateTime fullDate;

  ChartDataStruct({
    required this.dataEntrega,
    required this.totalComissoes,
    required this.fullDate,
  });

  factory ChartDataStruct.fromJson(Map<String, dynamic> json) {
    DateTime dateParse =
        DateFormat('yyyy-MM-dd').parse(json['data_entrega'] ?? '');
    String formattedDate = DateFormat('dd/MM').format(dateParse);

    return ChartDataStruct(
      dataEntrega: formattedDate,
      totalComissoes: (json['total_comissoes'] as num?)?.toDouble() ?? 0.0,
      fullDate: dateParse,
    );
  }
}
