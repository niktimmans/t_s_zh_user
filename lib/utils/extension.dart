import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:t_s_zh/utils/utils.dart';

extension ContextExt on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;

  void showMessage({required String text}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: AppTypography.font14.copyWith(
            color: AppColors.white,
          ),
          textAlign: TextAlign.center,
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: AppColors.black,
      ),
    );
  }
}

extension ToTimeFormat on int {
  String get toSecondsFormat {
    final toSeconds = this ~/ 1000;
    return '00:${toSeconds < 10 ? '0$toSeconds' : toSeconds}';
  }
}

extension DateTimeExt on DateTime {

  bool get isToday {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  DateTime copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) {
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
      microsecond ?? this.microsecond,
    );
  }
}

extension StringExt on String {

  String get firstSymbol => substring(0, 1);

}

extension DioExt on DioError {
  bool get isConnection =>
      error is SocketException ||
      type == DioErrorType.connectTimeout ||
      type == DioErrorType.sendTimeout;
}

