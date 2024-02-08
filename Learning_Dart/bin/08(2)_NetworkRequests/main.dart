import 'api_service.dart';
import 'post.dart';

void main() async {
  print('Получение постов...');
  await APIService().fetchPosts();

  print('\n---------------------------\nСоздание нового поста...');
  final newPost = Post(id: 3, title: 'Post 3', body: 'Body of Post 3');
  await APIService().createPost(newPost);

  print('\n---------------------------\nПолучение списка постов...');
  await APIService().fetchPosts();

  final updateID = 3;
  final updatePost = Post(id: updateID, title: 'Updated Post 3', body: 'Updated body of Post 3');
  print('\n---------------------------\nОбновление поста с ID: $updateID...');
  await APIService().updatePost(updateID, updatePost);
  print('\n---------------------------\nПолучение обновленного списка постов...');
  await APIService().fetchPosts();
}
