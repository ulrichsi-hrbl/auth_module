import 'package:flutter/cupertino.dart';

class LoginRequest {
  static Map<String, Object> getRequestObject(email, password) {
    return {
      'grant_type': 'password',
      'client_id': '58',
      'client_secret':
          'QXBwUHJvZE5DWENSYXN0ZGZzamdmZ2Zhc2pnZmdmc2tkdWZnZHN1a2Zoc3VkZ2ZoZg==',
      'locale': 'en_US',
      'username': email,
      'password': password,
    };
  }
}
