import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'post.dart';

class APIService {
  

  Future<void> fetchPosts() async {
    final url = Uri.parse('http://localhost:3000/posts');
    try {
      final response = await http.get(url);

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось получить данные. Код сервера: ${response.statusCode}');
      }

      final jsonData = response.body;
      final List<dynamic> listJson = jsonDecode(jsonData);
      final List<Post> posts =
          listJson.map((post) => Post.fromJson(post)).toList();

      for (final i in posts) {
        print(
            '\nPOST ID: ${i.id}, \nTitle: ${i.title}, \nDescription: ${i.body}');
      }
    } on SocketException {
      print('Не удалось получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> createPost(Post newPost) async {
    final url = Uri.parse('http://localhost:3000/posts');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(newPost.toJson()),
      );

      if (response.statusCode == 201) {
        final createdPost = Post.fromJson(json.decode(response.body));
        print('Пост успешно создан!\nPost ID: ${createdPost.id}');
      } else {
        throw HttpException(
            'Не удалось создать пост. Код сервера: ${response.statusCode}');
      }
    } on SocketException {
      print('Не удалось получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> updatePost(int postID, Post updatedPost) async {
    final url = Uri.parse('http://localhost:3000/posts/$postID');

    try {
      final response = await http.put(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(updatedPost.toJson()),
      );

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось обновить пост. Код сервера: ${response.statusCode}');
      }
      print('\nПост успешно обновлен! Post ID: $postID');

    } on SocketException {
      print('Не удалось получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }
}
