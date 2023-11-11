/*
Упражнение № 3: Уникальные слова

Вам предоставлен текст:

String initialText = "How many sheets could a sheet slitter slit if a
sheet slitter could slit sheets?"

Ваша задача вывести на экран количество уникальных слов в тексте без учета регистра.

Подсказка: можно, используя RegExp
*/

String initialText = 'How many sheets could a sheet Slitter slit if a sheet slitter could slit sheets?';

List<String> regExpToList (String str) {
  RegExp exp = RegExp(r'(\w+)');
  Iterable<RegExpMatch> matches = exp.allMatches(str.toLowerCase());
  List<String> list = [];
  
  for (final i in matches) {
    list.add(i[0] ?? '');
  }
  return list;
}

void uniqueWordsCount (List<String> collection) {
  print('Уникальные слова: ${collection.toSet()}');
  print('Количество уникальных слов: ${collection.toSet().length}');
}

void main() {
  final testList = regExpToList(initialText);
  print('Список слов входящего текста: $testList');
  uniqueWordsCount(testList);
}
