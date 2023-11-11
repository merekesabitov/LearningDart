/*
Упражнение № 1

У вас есть список строк. Ваша задача вернуть сумму длинны всех строк в списке.
Пример: [“a”, “ab”, “abc”] => 1 + 2 + 3 = 6

Условия:
1. Список может быть пустым, в этом случае возвращаем 0.

Входные данные:
[“a”, “ab”, “abc”]
[“abcde”, “ab”, “abc”]
[]

Результат:
[“a”, “ab”, “abc”] => 6
[“abcde”, “ab”, “abc”] => 10
[] => 0
*/
const list1 = ['a', 'ab', 'abc'];
const list2 = ['abcde', 'ab', 'abc'];
const list3 = <String>[];

int sum (List<String> list) => list.fold(0, (a, b) => a + b.length);

void main() {
  print(sum(list1));
  print(sum(list2));
  print(sum(list3));
}