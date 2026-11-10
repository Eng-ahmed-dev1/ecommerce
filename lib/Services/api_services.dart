import 'dart:convert';
import '../Models/product.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const url = "https://192.168.21.240:5001/api/products";
  static Future<List<Product>> getProducts() async {
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((product) => Product.fromjson(product)).toList();
    } else {
      throw Exception("Failed ${response.statusCode}");
    }
  }
}
