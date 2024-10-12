import 'package:freezed_annotation/freezed_annotation.dart';
import 'product.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {

  factory UserModel({
    required int userId,
    required int id,
    required List<ProductModel> products,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}