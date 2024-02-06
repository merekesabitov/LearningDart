import 'api_service.dart';

void main() async {
  print('Получение постов...');
  await APIService().fetchPosts();
}
