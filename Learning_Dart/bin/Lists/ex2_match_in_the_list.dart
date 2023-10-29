/*
Упражнение № 2: Найди совпадение в списке.

Вам дан список (list) и значение (value). Все, что вам нужно сделать, это проверить,
содержит ли предоставленный список данное значение.

Список = [60, 999, 14, "dart1", 45, 95, "dart", 1]

Список может содержать числа или строки. Value должно возвращать true,
если список содержит значение, и false, если нет. Запрещено использовать indexOf.

Входные данные:
Значение = “dart”
Значение = 15;

Результат:
true
false

*/


final collection = [60, 999, 14, "dart1", 45, 95, "dart", 1];

final element1 = "dart";
final element2 = 15;

match(List<Object> list, Object element) {
  var matches = false;

  for(var i in list) {
    if(i == element) {
      matches = true;
      break;
    }
  }
  return matches;
}

void main() {
  final test1 = match(collection, element1);
  print(test1);
  final test2 = match(collection, element2);
  print(test2);
}