import 'dart:convert';
import '../model/product.dart';
import 'package:http/http.dart' as http;

Future<List<Product>> fetchProducts() async {
  final response =
      await http.get(Uri.parse("https://fakestoreapi.com/products"));
  var data = jsonDecode(response.body);
  List tempList = [];
  for (var v in data) {
    tempList.add(v);
  }
  if (response.statusCode == 200) {
    return Product.productsFromSnapshot(tempList);
  } else {
    throw Exception('Failed to load products');
  }
}
