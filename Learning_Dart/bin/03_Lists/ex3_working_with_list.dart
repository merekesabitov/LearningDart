/*
Упражнение № 3: Работа со списком.

1. Создайте список:  [8, 2, 5, 4, 3, 9, 7, 1, 6];
2. Выведите его длину.
3. Выведите отсортированный список в порядке убывания.
4. Создайте из существующего списка новый отсортированный подсписок длиной в 5 элементов.
5. У нового отсортированного подсписка выведите индекс элемента со значением "7".
6. У нового  отсортированного подсписка удалите значения с 7 до 9 при помощи removeWhere и выведите в консоль.
7. Отсортируйте основной список по возрастанию и у него замените значения 1, 2, 3 в списке на 10, 20, 30 и выведите в консоль.
8. Объедините основной список с подсписком в новый список, используя spread оператор. 

Что должно получиться:
1. list is [8, 2, 5, 4, 3, 9, 7, 1, 6]
2. list length is 9 elements
3. descending sorted list: [9, 8, 7, 6, 5, 4, 3, 2, 1]
4. sorted sublist with length of 5 elements: [4, 5, 6, 7, 8, 9]
5. index of an value '7' in list is 3
6. list with removed values from 7 to 9: [4, 5, 6]
7. sorted list with replaced values [1, 2, 3, ...] => [10, 20, 30, ...]: [10, 20, 30, 4, 5, 6, 7, 8, 9]
8. union list: [10, 20, 30, 4, 5, 6, 7, 8, 9, 4, 5, 6]
*/


var list = [8, 2, 5, 4, 3, 9, 7, 1, 6];


void main() {
  //#1
  print('#1 list is $list');

  //#2
  print('#2 list length is ${list.length} elements');

  //#3
  list.sort((b, a) => a.compareTo(b));
  print('#3 descending sorted list: $list');

  //#4
  var subList = list.sublist(0, 6);
  subList.sort((a, b) => a.compareTo(b));
  print('#4 sorted sublist with length of 5 elements: $subList');

  //#5
  print('#5 index of an value "7" in list is ${subList.indexOf(7)}');

  //6
  subList.removeWhere((element) => element > 6);
  print('#6 list with removed values from 7 to 9: $subList');

  //7
  list.sort((a, b) => a.compareTo(b));
  list.replaceRange(0, 3, [10, 20, 30]);
  print('#7 sorted list with replaced values [1, 2, 3, ...] => [10, 20, 30, ...]: $list');
  
  //8
  list = [...list, ...subList];
  print('#8 union list: $list');
}