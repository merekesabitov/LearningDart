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
            'Не удалось получить данные. Код сервер: ${response.statusCode}');
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
}
