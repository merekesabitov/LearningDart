import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'post.dart';

class APIService {
  Future<void> fetchPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

  final response = await http.get(url);

  if (response.statusCode != 200) {
    throw HttpException('Ошибка');
  }

  final jsonData = response.body;
  final List<dynamic> listJson = jsonDecode(jsonData);
  final List<Post> posts = 
  listJson.map((post) => Post.fromJson(post)).toList();

  for (final i in posts) {
    print('1. ${i.id}, ${i.title}, ${i.body}');
  }

  }
}
