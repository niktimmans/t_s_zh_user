import 'dart:html';

import 'package:flutter/foundation.dart';

class Static {
  static Object? enumFromString(List<Object> enumValues, String value) {
    try {
      final enumValue = enumValues.firstWhere(
        (enumItem) =>
            describeEnum(enumItem).toLowerCase() == value.toLowerCase(),
      );
      return enumValue;
    } catch (_) {
      return null;
    }
  }

  static void removeRecaptcha() {
    final el = window.document.getElementById('__ff-recaptcha-container');
    if (el != null) {
      el.style.visibility = 'hidden';
    }
  }
}
