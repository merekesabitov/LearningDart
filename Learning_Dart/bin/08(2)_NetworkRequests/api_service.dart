import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'main.dart';
import 'post.dart';

class APIService {
  //GET request
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
        existKeys.add(i.id);
        print(
            '\nPOST ID: ${i.id}, \nTitle: ${i.title}, \nDescription: ${i.body}');
      }

      print('\nСписок ID существующих постов: $existKeys');
    } on SocketException {
      print('Не удалось получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  //POST request
  Future<void> createPost(Post newPost) async {
    print('\n--------------------------------------\nСоздание нового поста...');

    final url = Uri.parse('http://localhost:3000/posts');
    bool idIsExist = existKeys.contains(newPost.id);

    if (!idIsExist) {
      try {
        final response = await http.post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode(newPost.toJson()),
        );

        if (response.statusCode == 201) {
          final createdPost = Post.fromJson(json.decode(response.body));
          print('Пост с ID: ${createdPost.id} успешно создан!');
          print(
              '---------------------------\nПолучение нового списка постов...');
          await APIService().fetchPosts();
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
    } else {
      print('Не удалось создать пост. Пост с ID: ${newPost.id} уже имеется!');
    }
  }

  //PUT request
  Future<void> updatePost(String postID, Post updatedPost) async {
    print('\n---------------------------\nОбновление поста с ID: $postID...');
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
      print(
          '\n---------------------------\nПолучение обновленного списка постов...');
      await APIService().fetchPosts();
    } on SocketException {
      print('Не удалось получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  //DELETE request
  Future<void> deletePost({required String postID}) async {
    print('\n---------------------------\nУдаление поста с ID: $postID...');
    final url = Uri.parse('http://localhost:3000/posts/$postID');

    try {
      final response = await http.delete(url);

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось удалить пост. Код сервера: ${response.statusCode}');
      }
      print('\nПост успешно удален! Post ID: $postID');

      if (existKeys.contains(postID)) {
        existKeys.remove(postID);
      }

      print(
          '\n---------------------------\nПолучение списка постов после удаления...');
      await APIService().fetchPosts();
    } on SocketException {
      print('Не удалось получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }
}
