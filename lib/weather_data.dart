import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> getData() async {
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=Erode&APPID=ac2fec041081520297720912ef2c95bb',
  );

  final response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return data;
    } else {
      throw "Somethig went wrong";
    }
  } catch (e) {
    rethrow;
  }
}

Future<Map<String, dynamic>> getDataSalem() async {
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=Salem&APPID=ac2fec041081520297720912ef2c95bb',
  );

  final response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return data;
    } else {
      throw "Somethig went wrong";
    }
  } catch (e) {
    rethrow;
  }
}
Future<Map<String, dynamic>> getDataCoimbatore() async {
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=Coimbatore&APPID=ac2fec041081520297720912ef2c95bb',
  );

  final response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return data;
    } else {
      throw "Somethig went wrong";
    }
  } catch (e) {
    rethrow;
  }
}
Future<Map<String, dynamic>> getDataKarur() async {
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=Karur&APPID=ac2fec041081520297720912ef2c95bb',
  );

  final response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return data;
    } else {
      throw "Somethig went wrong";
    }
  } catch (e) {
    rethrow;
  }
}
Future<Map<String, dynamic>> getDataNamakkal() async {
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=Namakkal&APPID=ac2fec041081520297720912ef2c95bb',
  );

  final response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return data;
    } else {
      throw "Somethig went wrong";
    }
  } catch (e) {
    rethrow;
  }
}
Future<Map<String, dynamic>> getDataTiruppur() async {
  final url = Uri.parse(
    'https://api.openweathermap.org/data/2.5/weather?q=Tiruppur&APPID=ac2fec041081520297720912ef2c95bb',
  );

  final response = await http.get(url);
  try {
    if (response.statusCode == 200) {
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      return data;
    } else {
      throw "Somethig went wrong";
    }
  } catch (e) {
    rethrow;
  }
}