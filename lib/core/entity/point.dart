// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter/material.dart';

part 'point.freezed.dart';
part 'point.g.dart';

@freezed
class Point with _$Point {
  factory Point({
    @Default(0) int id,
    @Default('Point') String type,
    required List<double> coordinates,
  }) = _Point;

  factory Point.fromJson(Map<String, dynamic> json) => _$PointFromJson(json);
}

extension PointExt on Point {
  LatLng toLatLng() => LatLng(coordinates[1], coordinates[0]);

  // Método para obter a cor baseada em algum critério
  Color getColor() {
    // Exemplo de lógica: basear a cor nas coordenadas
    if (coordinates[0] > 0 && coordinates[1] > 0) {
      return Colors.green; // Se estiver no hemisfério norte e leste
    } else if (coordinates[0] < 0 && coordinates[1] < 0) {
      return Colors.red; // Hemisfério sul e oeste
    } else {
      return Colors.blue; // Outras condições
    }
  }
}
