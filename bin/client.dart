import './user_model.dart';
import 'package:dio/dio.dart';

abstract class ApiProviderPath {
  static const String carts = 'carts';
}

class ApiProvider {
  final Dio _client = Dio();
ApiProvider() { 
    _client.options.baseUrl = 'https://fakestoreapi.com/';
  }
  
  Future<List<UserModel>> getCart() async {
    final response = await _client.get(ApiProviderPath.carts);
    final data = response.data as List<dynamic>;
    final result = data.map((e) => UserModel.fromJson(e)).toList();
    return result;
  }
}