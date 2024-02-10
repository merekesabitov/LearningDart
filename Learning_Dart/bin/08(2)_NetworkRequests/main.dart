import 'api_service.dart';
import 'post.dart';

final existKeys = <String>{};

void main() async {

  //GET request
  print('Получение постов...');
  await APIService().fetchPosts();
  
  //POST request
  final newPost = Post(id: "3", title: 'Post 3', body: 'Body of Post 3');
  await APIService().createPost(newPost);

  //PUT request
  final updateID = '3';
  final updatePost = Post(id: updateID, title: 'Updated Post 3', body: 'Updated body of Post 3');
  await APIService().updatePost(updateID, updatePost);
  
}
