import 'api_service.dart';
import 'post.dart';

void main() async {
  print('Получение постов...');
  await APIService().fetchPosts();

  print('\n---------------------------\nСоздание нового поста...');
  final newPost = Post(id: 3, title: 'Post 3', body: 'Body of Post 3');
  await APIService().createPost(newPost);

  print('\n---------------------------\nОбновленный список постов...');
  await APIService().fetchPosts();  
}
