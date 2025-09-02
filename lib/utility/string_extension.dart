import 'package:flutter/material.dart';

extension ColorParsing on String? {
  Color parseToColor() {
    String colorString = 'FF$this';
    int hexColor = int.parse(colorString, radix: 16);

    return Color(hexColor);
  }
}

//expertflutter://shop?authority=13232432342344342&status=ok
extension QueryParamExtractor on String {
  String? extractValueFromQuery(String key) {
    // Remove everything before the question mark
    int queryStartIndex = indexOf('?');
    if (queryStartIndex == -1) return null;

    String query = substring(queryStartIndex + 1);

    // Split the query into key-value pairs
    List<String> pairs = query.split('&');

    // Find the key-value pair that matches the given key
    for (String pair in pairs) {
      List<String> keyValue = pair.split('=');
      if (keyValue.length == 2) {
        String currentKey = keyValue[0];
        String value = keyValue[1];

        if (currentKey == key) {
          // Decode the URL-encoded value
          return Uri.decodeComponent(value);
        }
      }
    }

    return null;
  }
}
