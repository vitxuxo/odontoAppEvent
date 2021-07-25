import 'dart:convert';

import 'package:hive/hive.dart';

part 'token_model.g.dart';

@HiveType(typeId: 0)
class TokenModel extends HiveObject {
  @HiveField(0)
  final String? token;

  TokenModel({
    this.token,
  });

  Map<String, dynamic> toMap() {
    return {
      'token': token,
    };
  }

  factory TokenModel.fromMap(Map<String, dynamic> map) {
    return TokenModel(
      token: map['token'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TokenModel.fromJson(String source) =>
      TokenModel.fromMap(json.decode(source));
}
