/*
Упражнение № 2
У вас есть список чисел. Ваша задача вернуть сумму всех положительных чисел.
Пример: [1, -10, 9, -1] => 1 + 9 = 10
Условия:
1. Список может быть пустым, в этом случае возвращаем 0.
2. Если в списке все отрицательные значения, то вернуть 0.

Входные данные:
[1, -10, 9, -1]
[-1, -2, -3]
[]
[1, 2]

Результат:
[1, -10, 9, -1] => 10
[-1, -2, -3] => 0
[] => 0
[1, 2] => 3
*/
const list1 = [1, -10, 9, -1];
const list2 = [-1, -2, -3];
const list3 = <num>[];
const list4 = [1, 2];
const list5 = [-1, 1.4, 5, 2.1]; //bonus

num sum (List<num> numbers) {
    return numbers.where((number) => !number.isNegative)
    .toList()
    .fold(0, (sum, element) => sum + element);
  }
void main() {
print(sum(list1));
print(sum(list2));
print(sum(list3));
print(sum(list4));
print(sum(list5)); //bonus
}
