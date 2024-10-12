

import './client.dart';

void main() async {
  final privoder = ApiProvider();
  final res = await privoder.getCart();
  print(res);

  }