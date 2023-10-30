/*
Упражнение № 2: Найди совпадение в списке.

Вам дан список (list) и значение (value). Все, что вам нужно сделать, это проверить,
содержит ли предоставленный список данное значение.

Список = [60, 999, 14, "dart1", 45, 95, "dart", 1]

Список может содержать числа или строки. Value должно возвращать true,
если список содержит значение, и false, если нет. Запрещено использовать indexOf и contains.

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

//specifying the type directly
match(List<Object> list, Object element) {
  for(var i in list) {
    if(i == element) {
      return true;
    }
  }
  return false;
}

//with Generics
bool match2<T>(List<T> list, T element) {
  for(var i in list) {
    if(i == element) {
      return true;
    }
  }
  return false;
}

void main() {
  final test1 = match(collection, element1);
  print(test1);
  final test2 = match2(collection, element2);
  print(test2);
}