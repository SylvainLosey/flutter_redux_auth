import 'dart:async';
import 'dart:core';

import 'web_client.dart';

class Repository {
  final WebClient client;

  const Repository({this.client = const WebClient()});

  Future<Map<String, dynamic>> login(String email, String password) async {
    final Map<String, String> credentials = {
      'username': email,
      'password': password,
    };

    return await client.post('/login', credentials);
  }
}