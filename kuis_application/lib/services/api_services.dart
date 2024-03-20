import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://newsapi.org/v2";
  static const String apiKey = "785950cfac734639a4117d2ca320c674";

  Future<List<Map<String, dynamic>>> getAllNews() async {
    final response = await http.get(Uri.parse("$baseUrl/top-headlines?country=id&apiKey=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['articles']);
  }
}
