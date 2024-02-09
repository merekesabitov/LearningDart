import 'api_service.dart';
import 'post.dart';

final existKeys = <String>[];
void main() async {
  //GET request
  print('Получение постов...');
  await APIService().fetchPosts();
  print('Список ID существующих постов: $existKeys');
  
  //POST request
  print('\n---------------------------\nСоздание нового поста...');
  final newPost = Post(id: "4", title: 'Post 3', body: 'Body of Post 3');
  await APIService().createPost(newPost);



  // final updateID = 3;
  // final updatePost = Post(id: updateID, title: 'Updated Post 3', body: 'Updated body of Post 3');
  // print('\n---------------------------\nОбновление поста с ID: $updateID...');
  // await APIService().updatePost(updateID, updatePost);
  // print('\n---------------------------\nПолучение обновленного списка постов...');
  // await APIService().fetchPosts();
}
