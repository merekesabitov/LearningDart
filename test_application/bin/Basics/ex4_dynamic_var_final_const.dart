/*
Упражнение № 4: dynamic, var, final and const

Учитывая, программу ниже:

void main() {
  DateTime timeNow = DateTime.now();

  String maybeJava = 'Java';
  String maybeFlutter = 'Flutter';

  String favourite;
  favourite = 'maybeJavaandmaybeFlutter';
  favourite = 'Now I like $favourite';

  String newfavourite = favourite.replaceAll('Java', 'Dart');

  print('Now is time: $timeNow');
  print(newfavourite);
}

Замените основные типы переменных на dynamic, var, final или const, но при этом получить работающую программу!
И проанализируйте ваш результат.

Пример:

String temperature = 15; => const temperature = 15;
*/


void main() {
  DateTime timeNow = DateTime.now();

    const maybeJava = 'Java';
    const maybeFlutter = 'Flutter';

    var favourite;
    favourite = '$maybeJava and $maybeFlutter';
    favourite = 'Now I like $favourite';

    final newfavourite = favourite.replaceAll('Java', 'Dart');

    print('Now is time: $timeNow');
    print(newfavourite);
}